`timescale 1ns/100ps

module i2c_initializer_tb;
    logic clk;
    logic reset;
    always begin #10; clk = ~clk; end

    wire sda, scl;
    logic [15:0] reg_addr;
    logic [7:0] reg_data;
    logic data_valid;
    logic trigger;
    wire ready;
    i2c_transmitter dut (
        .clock(clk), .reset(reset),
        .reg_addr(reg_addr), .reg_data(reg_data), .data_valid(data_valid), .ready(ready),
        .sda_io(sda), .scl_io(scl)
    );

    i2c_transmitter_controller txc (
        .clock(clk), .reset, .trigger,
        .reg_addr_o(reg_addr), .reg_data_o(reg_data), .data_valid_o(data_valid),
        .i2c_transmitter_ready(ready)
    );

    // controller
    initial begin
        trigger <= 0;
        repeat (100000) @(posedge clk);
        while (1) begin
            repeat (100 * 60) @(posedge clk);
            trigger <= 1'b1;
            @(posedge clk);
            trigger <= 1'b0;
        end
    end

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
