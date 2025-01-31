`timescale 1ns/100ps

module i2c_initializer_tb;
    logic clk;
    logic reset;
    always begin #10; clk = ~clk; end

    wire sda, scl;

    i2c_initializer dut (
        .clock(clk), .reset(reset),
        .sda_io(sda), .scl_io(scl),
        .active()
    );

    initial begin
        $dumpfile("i2c_initializer_tb.vcd");
        $dumpvars(0, i2c_initializer_tb);

        clk <= 0;
        reset <= 1;

        @(posedge clk); @(posedge clk);

        reset <= 0;

        repeat (500000) @(posedge clk);
        $finish;
    end

endmodule
