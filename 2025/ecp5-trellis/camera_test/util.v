`timescale 1ns/100ps

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

module resetter(input      clock,
                output     reset);
    parameter count_maxval = 255;
    localparam count_width = $clog2(count_maxval);

    reg [count_width - 1:0] reset_count;
    assign reset = (reset_count == count_maxval) ? 1'b0 : 1'b1;
    initial reset_count = 'h0;

    always @(posedge clock) begin
        reset_count <= (reset_count == count_maxval) ? count_maxval : reset_count + 'h01;
    end
endmodule

/**
 * Waits for "pulse_delay" clock cycles, then holds "pulse" high for "pulse_width" cycles.
 */
module pulse_one(input clock,
                 input reset,
                 output pulse);
    parameter pulse_delay = 511;
    parameter pulse_width = 15;
    localparam pulse_maxval = pulse_delay + pulse_width + 1;
    localparam pulse_bitwidth = $clog2(pulse_maxval);

    reg [pulse_bitwidth - 1 : 0] count;
    initial count = {{pulse_bitwidth{1'b0}}};

    assign pulse = ((count > pulse_delay) && (count < pulse_maxval));

    always @(posedge clock) begin
        if (!reset) begin
            count <= (count == pulse_maxval) ? pulse_maxval : count + 'h01;
        end else begin
            count <= {{pulse_bitwidth{1'b0}}};
        end
    end
endmodule

/**
 * input: 4'd12, output: 8'd99 (ascii for 'c')
 */
module hexdigit(input [3:0] num, output reg [7:0] ascii);
    always @* begin
        if (num < 4'd10) begin
            ascii = {4'h0, num} + 8'h30;
        end else begin
            ascii = {4'h0, num} + 8'h57;
        end
    end
endmodule
