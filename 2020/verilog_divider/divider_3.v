`ifndef _PIPELINED_DIVIDER_H
`define _PIPELINED_DIVIDER_H

// pipelined_divider.v
// Divides signed dividend by unsigned divisor.
// Parameterized to take inputs of variable size.
// Currently doing long division. Non restoring? Combine registers?

`timescale 1ns/100ps

//numerator = dividend, denominator = divisor
module pipelined_divider (input                             clock,

                          input                             input_valid,
                          input                       [5:0] input_tag,
                          input       [divisor_width - 1:0] divisor,
                          input      [dividend_width - 1:0] dividend,

                          output reg                        output_valid,
                          output reg                  [5:0] output_tag,
                          output reg [dividend_width - 1:0] quotient,
                          output reg [dividend_width - 1:0] remainder);

    parameter dividend_width = 12, divisor_width = 6, stages = dividend_width + 1;

    reg [dividend_width + divisor_width - 1:0] divisors   [0:stages];
    reg [dividend_width + divisor_width - 1:0] remainders [0:stages];
    reg [dividend_width - 1:0]                 quotients  [0:stages];

    reg neg_flags [0:stages]; //set if dividend is negative

    reg stage_valid [0:stages];
    reg [5:0] stage_tag [0:stages];

    always @(posedge clock) begin
        if (dividend[dividend_width - 1] == 1'b1) begin
            neg_flags[0] <= 1'b1;
            remainders[0] <= {{divisor_width{1'b0}}, -dividend};
        end else begin
            neg_flags[0] <= 1'b0;
            remainders[0] <= {{divisor_width{1'b0}}, dividend};
        end
        divisors[0]   <= {divisor, {dividend_width{1'b0}}};
        quotients[0]  <= {dividend_width{1'b0}};

        stage_valid[0] <= input_valid;
        stage_tag[0] <= input_tag;
    end

    genvar i;
    generate
        for (i = 0; i < stages; i = i + 1) begin : stages
            reg [dividend_width + divisor_width - 1:0] sub;
            always @* begin
                sub = remainders[i] - divisors[i];
            end

            always @(posedge clock) begin
                if (sub <= remainders[i]) begin //no underflow/positive
                    remainders[i + 1] <= sub;
                    quotients[i + 1] <= (quotients[i] << 1) | 1;
                end else begin //underflow/negative
                    remainders[i + 1] <= remainders[i];
                    quotients[i + 1] <= quotients[i] << 1;
                end
                divisors[i + 1] <= divisors[i] >> 1;
                neg_flags[i + 1] <= neg_flags[i];

                stage_valid[i + 1] <= stage_valid[i];
                stage_tag[i + 1] <= stage_tag[i];
            end
        end
    endgenerate

    always @(posedge clock) begin

        if (neg_flags[stages]) begin
            quotient <= -quotients[stages];
            remainder <= -remainders[stages]; //different size but should be fine
        end else begin
            quotient <= quotients[stages];
            remainder <= remainders[stages];
        end

        output_valid <= stage_valid[stages];
        output_tag <= stage_tag[stages];
    end
endmodule // pipelined_divider

`endif
