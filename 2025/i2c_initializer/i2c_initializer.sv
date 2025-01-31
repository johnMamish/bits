/**
 * Copyright 2020, Julian Richey
 */

module divide_by_n(input clk,
	           input reset,
	           output reg out);
    parameter N = 2;
    localparam cwidth = $clog2(N - 1);
    reg [cwidth - 1:0] counter;

    always @(posedge clk) begin
	if (counter == 0) begin
	    counter <= N - 1;
	end else begin
	    counter <= counter - 1;
        end

        out <= (counter < (N >> 1)) ? 1'b1 : 1'b0;

        if (reset) begin
	    counter <= N - 1;
            out <= 1'b0;
	end
    end
endmodule

module i2c_initializer #(
    parameter DEV_ID = 7'h35
)  (
    input clock, //should be 12mhz
    input reset,

    inout sda_io,
    inout scl_io,

    output reg active
);

    reg sda, scl;
    assign sda_io = sda ? 1'b1 : 1'b0;
    assign scl_io = scl ? 1'b1 : 1'b0;

    wire scl_freq;
    //A11 = 12000000/(440*(2^7)) = 213.068
    defparam div.N = 180; //120 for 100khz, 30 for 400khz
    divide_by_n div(
        .clk(clock),
        .reset(reset),
        .out(scl_freq)
    );

    reg [23:0] mem [0:159];

    initial begin
        $readmemh("hm0360_init_bytes.hex", mem);
    end

    reg [7:0] mem_adr; //2^8=256 > 160
    reg [7:0] mem_adr_next;

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

        if (reset) begin
            sda_next = 1'b1;
            scl_next = 1'b1;
            mem_adr_next = 8'b0;
            byte_adr_next = 2'b11;
            bit_adr_next = 4'h7;
            txing_next = 1'b0;
            stopping_next = 1'b0;
            active_next = 1'b1;
        end else if (mem_adr >= 160) begin //done with transmissions
            sda_next = 1'b1;
            active_next = 1'b0;
        end else if (scl_freq && !scl_freq_prev) begin
            // Toggle scl when the divided clock tells us to
            scl_next = 1'b1;
        end else if (scl_freq_prev && !scl_freq_prev_prev) begin //posedge scl - start, stop
            // the cycle after scl rises, we update SDA logic
            if (stopping) begin
                sda_next = 1'b1; //sda is ack:high, stopping:low, stop condition:high
                stopping_next = 1'b0;
                mem_adr_next = mem_adr + 8'b1;
            end else begin
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
            if (!stopping && !txing) begin
                scl_next = 1'b1;
            end else begin
                scl_next = 1'b0;
            end
        end else if (!scl_freq_prev && scl_freq_prev_prev) begin //negedge scl - transmit
            if (stopping)
                sda_next = 1'b1;
            else if (txing) begin
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
    end
endmodule
