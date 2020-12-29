`timescale 1ns/100ps

module divider_top(input clock,
                   input [(dividend_width - 1):0] dividend,
                   input [(divisor_width - 1):0] divisor,
                   output reg [(dividend_width - 1):0] out);
    parameter dividend_width = 12;
    parameter divisor_width = 3;

    reg [(dividend_width - 1):0] dividend_latch;
    reg [(divisor_width - 1):0] divisor_latch;

    always @(posedge clock) begin
        dividend_latch <= dividend;
        divisor_latch <= divisor;
        out <= (dividend_latch / divisor_latch);
    end
endmodule
