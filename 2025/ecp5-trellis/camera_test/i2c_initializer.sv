/**
 * Copyright 2020, Julian Richey and
 * Copyright 2025, John Mamish
 */


/**
 * Does a single transmission over i2c when requested
 */
module i2c_transmitter #(
    parameter DEV_ID = 7'h35,
    parameter SCL_DIV = 60
)  (
    input clock,
    input reset,

    // Control bus
    input [15:0] reg_addr,
    input [7:0] reg_data,
    input data_valid,
    output reg ready,

    // i2c output
    inout sda_io,
    inout scl_io
);

    reg sda, scl;
    assign sda_io = sda ? 1'bz : 1'b0;
    assign scl_io = scl ? 1'bz : 1'b0;

    wire scl_freq;
    defparam div.N = SCL_DIV;
    divide_by_n div(
        .clk(clock),
        .reset(reset),
        .out(scl_freq)
    );

    // kind of hacky, but simple: rising and falling edge detection for divided clock
    logic scl_freq_prev, scl_freq_rose, scl_freq_fell;
    always_ff @(posedge clock) begin
        scl_freq_prev <= scl_freq;
        scl_freq_rose <= (!scl_freq_prev && scl_freq);
        scl_freq_fell <= (scl_freq_prev && !scl_freq);
    end

    enum logic [2:0] {
        IDLE=0, PRE_START_COND=1, START_COND=2, STOP_COND=3,
        TRANSMITTING_DEV_ADDR=4, TRANSMITTING_REG_ADDR=5, TRANSMITTING_DATA=6
    } state;

    logic [15:0] reg_addr_latch;
    logic [7:0] reg_data_latch;
    logic [7:0] output_latch;
    logic [4:0] bit_addr;
    logic [1:0] byte_addr;

    always_ff @(posedge clock) begin
        case (state)
            IDLE: begin
                scl <= '1;
                sda <= '1;
                ready <= '1;
                if (data_valid) begin
                    reg_addr_latch <= reg_addr;
                    reg_data_latch <= reg_data;
                    ready <= '0;
                    state <= START_COND;
                end
            end

            PRE_START_COND: begin
                // we need to wait until the scl serial clock has had a falling edge before we
                // move to the next state.
                if (scl_freq_fell) state <= START_COND;
            end

            START_COND: begin
                // on rising edge of scl serial clock, we bring sda low and advance to the next state.
                if (scl_freq_rose) begin
                    sda <= '0;
                    state <= TRANSMITTING_DEV_ADDR;
                    bit_addr <= '0;
                end
            end

            TRANSMITTING_DEV_ADDR: begin
                if (scl_freq_fell) begin
                    // bring scl low and advance the bit address
                    scl <= '0;
                    bit_addr <= bit_addr + 1;

                    if (bit_addr == 4'h8) begin
                        // allow NAK to happen
                        sda <= 1'b1;
                    end else begin
                        // send next bit of address
                        logic [7:0] dev_addr = {DEV_ID,1'b0};
                        sda <= dev_addr[7 - bit_addr];
                    end
                end

                if (scl_freq_rose) begin
                    scl <= '1;

                    if (bit_addr == 4'h9) begin
                        // TODO: if we wanted to sample SDA for NAK, we'd do it here.
                        state <= TRANSMITTING_REG_ADDR;
                        bit_addr <= '0;
                        byte_addr <= '0;
                    end
                end
            end

            TRANSMITTING_REG_ADDR: begin
                if (scl_freq_fell) begin
                    // bring scl low and advance the bit address
                    scl <= '0;

                    // increment bit addr
                    if (bit_addr == 4'h8) begin
                        bit_addr <= '0;
                        byte_addr <= byte_addr + 1;
                    end else begin
                        bit_addr <= bit_addr + 1;
                    end

                    if (bit_addr == 4'h8) begin
                        // allow NAK ot happen
                        sda <= '1;
                    end else begin
                        sda <= reg_addr_latch[((1 - byte_addr) << 3) + (7 - bit_addr)];
                    end
                end

                if (scl_freq_rose) begin
                    scl <= '1;

                    if (byte_addr == 2) begin
                        state <= TRANSMITTING_DATA;
                        bit_addr <= '0;
                        byte_addr <= '0;
                    end
                end
            end

            TRANSMITTING_DATA: begin
                if (scl_freq_fell) begin
                    // bring scl low and advance the bit address
                    scl <= '0;
                    bit_addr <= bit_addr + 1;

                    if (bit_addr == 4'h8) begin
                        // allow NAK to happen
                        sda <= 1'b1;
                    end else begin
                        // send next bit of address
                        sda <= reg_data_latch[7 - bit_addr];
                    end
                end

                if (scl_freq_rose) begin
                    scl <= '1;

                    if (bit_addr == 4'h9) begin
                        // TODO: if we wanted to sample SDA for NAK, we'd do it here.
                        state <= STOP_COND;
                        bit_addr <= '0;
                        byte_addr <= '0;
                    end
                end
            end

            STOP_COND: begin
                if (scl_freq_rose) begin
                    scl <= '1;

                    if (bit_addr == 1) begin
                        state <= IDLE;
                        ready <= '1;
                        sda <= '1;
                    end
                end

                if (scl_freq_fell) begin
                    bit_addr <= bit_addr + 1;

                    if (bit_addr == 0) sda <= '0;
                    else sda <= '1;
                end
            end
        endcase // case (state)

        if (reset) begin
            state <= IDLE;
            sda <= '1;
            scl <= '1;
        end
    end
endmodule


/**
 * Sends a bunch of i2c write requests.
 *
 * Instruction encoding (all instrs are 32b and presented in little endian):
 * wait until i2c controller is ready, then immediately send data
 *     00  <addr MSB>   <addr LSB>   <addr data>
 *
 * delay for ARG clock cycles
 *     01  xx ARG[15:0]
 *
 * wait for trigger input from external signal, then advance to next instruction
 *     02  00 00 00
 *
 * jump to address ARG immediately
 *     03  ARG[23:0]
 *
 * relative jump to pc + (signed ARG[23:0]) immediately
 *     04  ARG[23:0]
 */
module i2c_transmitter_controller #(
    parameter DEV_ID = 7'h35,
    parameter MEM_NUM_WORDS = 512
)  (
    input clock,
    input reset,
    input trigger,

    // control bus to i2c transmitter
    output logic [15:0] reg_addr_o,
    output logic [7:0] reg_data_o,
    output logic data_valid_o,
    input i2c_transmitter_ready
);
    reg [31:0] mem [MEM_NUM_WORDS];

    initial begin
        $readmemh("i2c_controller_program.hex", mem);
    end

    logic [15:0] pc;
    logic [31:0] ir;

    enum logic [1:0] {
        FETCH=0, EXECUTE=1
    } state;

    localparam logic [7:0] OPCODE_TX = 8'h00;
    localparam logic [7:0] OPCODE_WAIT = 8'h01;
    localparam logic [7:0] OPCODE_TRIG = 8'h02;
    localparam logic [7:0] OPCODE_JMP = 8'h03;
    localparam logic [7:0] OPCODE_JMP_RELATIVE = 8'h04;

    logic [23:0] cycle_count;

    always_ff @(posedge clock) begin
        data_valid_o <= '0;

        case (state)
            FETCH: begin
                ir <= mem[pc];
                pc <= pc + 1;
                state <= EXECUTE;
                cycle_count <= '0;
            end

            EXECUTE: begin
                cycle_count <= cycle_count + 1;
                case (ir[7:0])
                    OPCODE_TX: begin
                        if (i2c_transmitter_ready) begin
                            reg_addr_o <= ir[8 +: 16];
                            reg_data_o <= ir[24 +: 8];
                            data_valid_o <= '1;
                            state <= FETCH;
                        end
                    end

                    OPCODE_WAIT: begin
                        if (cycle_count >= ir[16 +: 16]) begin
                            state <= FETCH;
                        end
                    end

                    OPCODE_TRIG: begin
                        if (trigger) begin
                            state <= FETCH;
                        end
                    end

                    OPCODE_JMP: begin
                        pc <= ir[8 +: 24];
                        state <= FETCH;
                    end

                    OPCODE_JMP_RELATIVE: begin
                        pc <= pc + ir[8 +: 24];
                        state <= FETCH;
                    end

                    default: begin
                        state <= FETCH;
                    end
                endcase
            end
        endcase

        if (reset) begin
            pc <= 0;
            state <= FETCH;
        end
    end

endmodule

module i2c_initializer #(
    parameter DEV_ID = 7'h35,
    parameter MEM_NUM_WORDS = 256
)  (
    input clock, //should be 12mhz
    input reset,

    inout sda_io,
    inout scl_io,

    output reg active
);

    reg sda, scl;
    assign sda_io = sda ? 1'bz : 1'b0;
    assign scl_io = scl ? 1'bz : 1'b0;

    wire scl_freq;
    //A11 = 12000000/(440*(2^7)) = 213.068
    defparam div.N = 60; //120 for 100khz, 30 for 400khz
    divide_by_n div(
        .clk(clock),
        .reset(reset),
        .out(scl_freq)
    );

    reg [23:0] mem [MEM_NUM_WORDS];

    initial begin
        $readmemh("hm0360_init_bytes.hex", mem);
    end

    reg [2:0] stop_clk_count;
    reg [2:0] stop_clk_count_next;

    reg [15:0] mem_adr;
    reg [15:0] mem_adr_next;

    reg [1:0] byte_adr; //2'b11 is dev_id
    reg [1:0] byte_adr_next;

    reg [3:0] bit_adr; //0-7, 8 is ack (9 to stop?)
    reg [3:0] bit_adr_next;

    reg sda_next;
    reg scl_next;
    reg scl_freq_prev;
    reg scl_freq_prev_prev;

    reg txing;
    reg txing_next;

    reg stopping;
    reg stopping_next;

    reg active_next;

    always_ff @(posedge clock) begin
        sda <= sda_next;
        scl <= scl_next;
        mem_adr <= mem_adr_next;
        byte_adr <= byte_adr_next;
        bit_adr <= bit_adr_next;
        scl_freq_prev <= scl_freq;
        scl_freq_prev_prev <= scl_freq_prev;
        txing <= txing_next;
        stopping <= stopping_next;
        active <= active_next;
        stop_clk_count <= stop_clk_count_next;
    end

    always @* begin
        sda_next = sda;
        scl_next = scl;
        mem_adr_next = mem_adr;
        byte_adr_next = byte_adr;
        bit_adr_next = bit_adr;
        txing_next = txing;
        stopping_next = stopping;
        active_next = active;
        stop_clk_count_next = stop_clk_count;

        if (mem_adr >= MEM_NUM_WORDS) begin //done with transmissions
            sda_next = 1'b1;
            active_next = 1'b0;
        end else if (scl_freq && !scl_freq_prev) begin
            // Toggle scl when the divided clock tells us to
            scl_next = 1'b1;
        end else if (scl_freq_prev && !scl_freq_prev_prev) begin //posedge scl - start, stop
            // the cycle after scl rises, we update SDA logic
            if (stopping) begin
                //sda_next = 1'b1; //sda is ack:high, stopping:low, stop condition:high
                stop_clk_count_next = stop_clk_count + 1;
                if (stop_clk_count == 1) begin
                    stopping_next = 1'b0;
                    mem_adr_next = mem_adr + 1;
                end
            end else begin
                stop_clk_count_next = 0;
                if (byte_adr == 2'b11 && bit_adr == 4'h7 && !txing) begin //start
                    txing_next = 1'b1;
                    sda_next = 1'b0;
                end else if (byte_adr == 2'b11 && bit_adr == 4'h7 && txing) begin //stop
                    txing_next = 1'b0;
                    stopping_next = 1'b1;
                end
            end
        end else if (!scl_freq && scl_freq_prev) begin
            // Divided clock is telling us to bring scl low.
            // if we're stopping, leave scl high on this cycle
            if ((stop_clk_count != 0) && !txing) begin
                scl_next = 1'b1;
            end else begin
                scl_next = 1'b0;
            end
        end else if (!scl_freq_prev && scl_freq_prev_prev) begin //negedge scl - transmit
            if (stopping) begin
                if (stop_clk_count == 0) sda_next = 1'b0;
                else sda_next = 1'b1;
            end else if (txing) begin
                bit_adr_next = bit_adr - 4'b1;

                if (!bit_adr) begin
                    byte_adr_next = byte_adr + 2'b01;
                    bit_adr_next = 4'h8;
                end

                if (bit_adr == 4'h8) begin
                    // allow NAK to happen
                    sda_next = 1'b1;
                end else if (byte_adr == 2'b11) begin
                    sda_next = !(!({DEV_ID,1'b0} & (8'b1 << bit_adr)));
                end else begin
                    sda_next = mem[mem_adr][{2'b10 - byte_adr, bit_adr[2:0]}];
                end
            end
        end

        if (reset) begin
            sda_next = 1'b1;
            scl_next = 1'b1;
            mem_adr_next = 'b0;
            byte_adr_next = 2'b11;
            bit_adr_next = 4'h7;
            txing_next = 1'b0;
            stopping_next = 1'b0;
            active_next = 1'b1;
            stop_clk_count_next = '0;
        end
    end
endmodule
