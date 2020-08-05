/**
 * cells_sim.v contains an iCE40 sysdsp block carefully re-written in verilog by the authors of
 * yosys. It's based off of schematics provided by Lattice. Taken from:
 * https://github.com/YosysHQ/yosys/blob/master/techlibs/ice40/cells_sim.v
 *
 * This testbench is to make sure that that pipelined multiplier that I've been using gives the same
 * results as the sysDSP block.
 *
 * We also want to make sure that we can instantiate a sysDSP block.
 */

`timescale 1ns/100ps

// k * cos((n * pi) / 16) for 1c3 = 0.8314696123 * 0.35355339059
// 75.2560385539
`define _1C3_COS_7Q8 (9'd75)

// k * sin((n * pi) / 16) for 1c3 = 0.5555702330 * 0.35355339059
// 50.2844773345
`define _1C3_SIN_7Q8 (9'd50)

// k * cos((n * pi) / 16) for 1c1 = 0.9807852804 * 0.35355339059
// 88.7705500995
`define _1C1_COS_7Q8 (9'd89)

// k * sin((n * pi) / 16) for 1c1 = 0.1950903220 * 0.35355339059
// 17.6575602725
`define _1C1_SIN_7Q8 (9'd18)

// k * cos((n * pi) / 16) for sqrt(2)c1 = 0.54119610014 * 0.35355339059
// 48.9834793417
`define _R2C1_COS_7Q8 (9'd49)

// k * sin((n * pi) / 16) for sqrt(2)c1 = 1.30656296488 * 0.35355339059
// 118.256580161
`define _R2C1_SIN_7Q8 (9'd118)

// 1.41421356237
// 362.038671967
`define _SQRT2_7Q8 (9'd362)

// 1.41421356237 * 0.25
// 90.5096679917
`define _SQRT2_OVER4_7Q8 (9'd90)


module multiplier_constants(input [2:0] select,
                            output reg [8:0] out);
    always @ * begin
        case (select)
            3'd0: out = `_1C3_COS_7Q8;
            3'd1: out = `_1C3_SIN_7Q8;
            3'd2: out = `_1C1_COS_7Q8;
            3'd3: out = `_1C1_SIN_7Q8;
            3'd4: out = `_R2C1_COS_7Q8;
            3'd5: out = `_R2C1_SIN_7Q8;
            3'd6: out = `_SQRT2_7Q8;
            3'd7: out = `_SQRT2_OVER4_7Q8;
        endcase
    end
endmodule

module sb_mul16_tb();
    reg clock;
    reg nreset;
    reg signed [15:0] a;
    reg [2:0] coeff_select;

    wire multipler_consts;
    wire [8:0] multiplier_consts;
    multiplier_constants mulrom(.select(coeff_select),
                                .out(multiplier_consts));

    wire signed [31:0] pipelined_multiplier_out;
    wire signed [31:0] mac16_out;

    pipelined_multiplier pm(.clk(clock),
                           .nreset(nreset),
                           .a(a),
                           .b({7'b0, multiplier_consts}),
                           .out(pipelined_multiplier_out));

    wired_up_mac16 dsp(.clock(clock),
                       .nreset(nreset),
                       .a(a),
                       .b({7'b0,multiplier_consts}),
                       .out(mac16_out));

    always begin
        clock = 'b0;
        #100;
        clock = 'b1;
        #100;
    end

    integer i;
    initial begin
        $dumpfile("sb_mul16_tb.vcd");
        $dumpvars(0, sb_mul16_tb);
        $dumpvars(1, pm.internal[0]);
        $dumpvars(1, pm.internal[1]);
        nreset = 1'b0;
        @(posedge clock);
        @(posedge clock);
        nreset <= 1'b1;

        for (i = 0; i < 10000; i = i + 1) begin
            a <= $urandom;
            coeff_select <= $urandom;

            if (pipelined_multiplier_out !== mac16_out) begin
                $write("********************************");
            end
            $display("%h %h", pipelined_multiplier_out, mac16_out);
            @(posedge clock);
        end

        $finish;
    end

endmodule
