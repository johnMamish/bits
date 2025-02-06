/**
 * Copyright 2020, Julian Richey and
 * Copyright 2025, John Mamish
 */

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
