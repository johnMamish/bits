`timescale 1ns/100ps

module ft232_driver_tb;
    logic clk;
    logic reset;

    // generate clock
    initial clk = 0;
    always begin #10; clk <= ~clk; end

    ////////////////////////////////////////////////////////////////
    // data going to dut
    logic [7:0] write_data;
    logic write_data_valid;

    initial begin
        logic [7:0] n;
        n <= 0;
        write_data_valid <= 0;
        repeat(2) @(posedge clk);
        @(negedge reset);
        repeat(50) @(posedge clk);
        forever begin
            logic [7:0] prob;
            @(posedge clk);
            if ($urandom_range(256) < 10) begin
                write_data <= n;
                write_data_valid <= 1;
                n <= n + 1;
            end else begin
                write_data <= 'x;
                write_data_valid <= 0;
            end
        end
    end

    ////////////////////////////////////////////////////////////////
    // simulated ft245
    logic nrxf, ntxe, nrd, nwr;
    initial begin
        int tx_fifo_count = 0;
        int rx_fifo_count = 0;

        fork
            forever begin
                #1;

                // update values for "rx ready" and "tx ready"
                nrxf <= 1;
                ntxe <= (tx_fifo_count >= 8) ? 1 : 0;

                // if nwr was brought low, the ft245 gets written to.
                if (!nwr) begin
                    tx_fifo_count += 1;
                    #10;
                    ntxe <= 1;
                    #49;
                    @(posedge nwr);
                end
            end

            forever begin
                #1000;
                if (tx_fifo_count > 0) tx_fifo_count -= 1;
            end
        join_none
    end

    ////////////////////////////////////////////////////////////////
    // dut
    wire [7:0] ft245_data;
    ft232h_async_driver dut (
        .clk_in(clk), .reset_in(reset),
        .fifo_data_in(write_data), .fifo_data_valid_in(write_data_valid),
        .ft245_async_d_inout(ft245_data),
        .ft245_async_nrxf_in(nrxf), .ft245_async_ntxe_in(ntxe),
        .ft245_async_nrd_out(nrd), .ft245_async_nwr_out(nwr)
    );

    initial begin
        $dumpfile("ft232_driver_tb.vcd");
        $dumpvars(0, ft232_driver_tb);

        reset <= 0;
        repeat(2) @(posedge clk);
        reset <= 1;
        repeat(20) @(posedge clk);
        reset <= 0;
        repeat(50_000) @(posedge clk);

        $finish;
    end
endmodule
