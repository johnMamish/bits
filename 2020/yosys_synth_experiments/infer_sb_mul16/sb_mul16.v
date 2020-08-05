`timescale 1ns/100ps

`define _DEFINED

`ifdef _DEFINED

module pipelined_multiplier (clk, nreset, a, b, out);
    parameter width = 16, depth = 2;
    input clk;
    input nreset;
    input signed [width - 1 : 0] a;
    input signed [width - 1 : 0] b;
    output signed [(2 * width) - 1 : 0] out;
    reg signed [(2 * width) - 1 : 0] internal [(depth - 1) : 0];
    integer i;

    assign out = internal[depth - 1];

    always @ (posedge clk) begin
        if (nreset) begin
            // registering input of the multiplier
            internal[0] <= a * b;
            for (i = 1; i < depth; i = i + 1)
              internal [i] <= internal [i - 1];
        end else begin
            for (i = 0; i < depth; i = i + 1)
              internal [i] <= 'h0;
        end
    end
endmodule
`endif

/**
 * What's the max freq for sysdsp? I'm sure that the iCEstorm folks have figured it out.
 */
`ifdef _DEFINED
module wired_up_mac16 (input                    clock,
                       input                    nreset,
                       input signed [15:0]      a,
                       input signed [15:0]      b,
                       output signed [31:0]     out);
    wire reset;
    wire signed [31:0] outwire;
    assign reset = !nreset;
    assign out = outwire;
    SB_MAC16 #(.NEG_TRIGGER(1'b0),    //
               .C_REG(1'b0),          // C0 on block diagram
               .A_REG(1'b0),          // C1 on block diagram
               .B_REG(1'b0),          // C2
               .D_REG(1'b0),          // C3
               .TOP_8x8_MULT_REG(1'b1),     // C4
               .BOT_8x8_MULT_REG(1'b1),     // C5
               .PIPELINE_16x16_MULT_REG1(1'b1),    // C6
               .PIPELINE_16x16_MULT_REG2(1'b1),    // C7
               .TOPOUTPUT_SELECT(2'b11),           // C8,9
               .TOPADDSUB_LOWERINPUT(2'b00),       // C10,11
               .TOPADDSUB_UPPERINPUT(1'b0),        // C12
               .TOPADDSUB_CARRYSELECT(2'b00),      // C13,14
               .BOTOUTPUT_SELECT(2'b11),           // C15,16
               .BOTADDSUB_LOWERINPUT(2'b00),       // C17,18
               .BOTADDSUB_UPPERINPUT(1'b0),        // C19
               .BOTADDSUB_CARRYSELECT(2'b00),      // C20,21
               .MODE_8x8(1'b0),                    // labelled "8x8 powersave"
               .A_SIGNED(1'b1),
               .B_SIGNED(1'b1)
               ) mul16 (.A(a),
                        .AHOLD(1'b0),
                        .B(b),
                        .BHOLD(1'b0),
                        .C(16'h0000),
                        .D(16'h0000),
                        .CHOLD(1'b1),
                        .DHOLD(1'b1),

                        .IRSTTOP                    (reset), //keep hold register in reset
                        .IRSTBOT                    (reset), //keep hold register in reset
                        .ORSTTOP                    (reset), //keep hold register in reset
                        .ORSTBOT                    (reset), //keep hold register in reset
                        .OLOADTOP                   (1'b0), //keep unused signals quiet
                        .OLOADBOT                   (1'b0), //keep unused signals quiet
                        .ADDSUBTOP                  (1'b0), //unused
                        .ADDSUBBOT                  (1'b0), //unused
                        .OHOLDTOP                   (1'b1), //keep hold register stable
                        .OHOLDBOT                   (1'b1), //keep hold register stable

                        .CE(1'b1),
                        .CLK(clock),

                        // .CO(1'b0), .ACCUMCO(1'b0), .SIGNEXTOUT(1'b0),
                        .CI(1'b0), .ACCUMCI(1'b0), .SIGNEXTIN(1'b0),
                        .O(outwire));
endmodule

`endif
