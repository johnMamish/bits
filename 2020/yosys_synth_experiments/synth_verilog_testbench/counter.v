/**
 * This is a simple design that I'll synthesize with yosys. I want to dump the synthesized design
 * to a verilog file and use a testbench to compare the output of the RTL design with the
 * synthesized design.
 *
 * This is a practice that I need to adopt for larger designs; I suspect that yosys is optimizing
 * out memory blocks that I need in my jfpjc design (however, I can't really be sure).
 */

`define COUNTER_MAX_VALUE 200
module counter(input clock,
               input reset,

               output reg [7:0] counter);
    // but, for really simple logic, it can make sense to put combinational logic inside the
    // always @(posedge clock) block
    always @(posedge clock) begin
        if (reset) begin
            counter <= 8'h00;
        end else begin
            if (counter == `COUNTER_MAX_VALUE) begin
                counter <= 8'h00;
            end else begin
                counter <= counter + 8'h1;
            end
        end
    end
endmodule
