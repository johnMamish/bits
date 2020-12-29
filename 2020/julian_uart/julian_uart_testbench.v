/**
 * When starting out with the testbench, you might want to artificially fake the SPRAM to be
 * smaller. When working with a 32KB SPRAM, your simulation will need to be hundreds of thousands
 */
module testbench();
    reg clock;
    reg reset;

    // my iCE40 dev board has a 12MHz system clock on it. You can divide this clock by 13 to get a
    // ~921,600 UART clock or by 104 to get a ~115,200 UART clock.
    localparam SYS_CLOCK_FREQ = 12000000.0;
    localparam UART_BAUD_RATE = SYS_CLOCK_FREQ / 13;
    always begin
        clock = 1'b0;
        #((1E9 / SYS_CLOCK_FREQ) / 2);
        clock = 1'b1;
        #((1E9 / SYS_CLOCK_FREQ) / 2);
    end

    reg [7:0] data_in;
    reg       data_in_valid;
    wire uart_tx;
    spram_uart_buffer sender(.clock(clock),
                             .reset(reset),
                             .data_in(data_in),
                             .data_in_valid(data_in_valid),
                             .uart_tx(uart_tx));


    // used for statistical modelling of data input rate.
    localparam PRESUMED_UART_CLOCKS_PER_BYTE = 10;
    localparam integer PRESUMED_SYS_CLOCKS_PER_UART_BYTE = $ceil(SYS_CLOCK_FREQ /
                                                                 (UART_BAUD_RATE / PRESUMED_UART_CLOCKS_PER_BYTE));

    // lumpiness should be between 1 and PRESUMED_UART_CLOCKS_PER_BYTE.
    localparam lumpiness = 4;

    localparam BUF_SIZE = 256;

    // random tip I found out: In Verilog, you can name blocks. If you do this, you're allowed to
    // declare integers inside the block. I usually name my testbench 'initial begin' block "main".
    initial begin : main
        integer i;
        integer j;
        integer dist_uniform_seed0, dist_uniform_seed1;
        dist_uniform_seed0 = 100; dist_uniform_seed1 = 1;

        $dumpfile("./uart.vcd");
        $dumpvars(0, testbench);

        // hold reset high for 2 clock cycles
        data_in = 8'b0;
        data_in_valid = 1'b0;
        reset = 1'b1;
        @(posedge clock); @(posedge clock);
        reset = #1 1'b0;

        for (i = 0; i < 10; i = i + 1) begin : loop
            integer j;
            integer clocks_waited ;
            integer extra_clocks_to_wait;

            // hacky way to keep average rate fixed but have a bunch of writes in a row.
            // This makes the writes very “lumpy”. Simulation will take a long long time.
            clocks_waited = 0;
            for (j = 0; j < BUF_SIZE; j = j + 1) begin : loop1
                integer k;
                integer clocks_to_wait;

                $display("on byte %d", i * BUF_SIZE + j);

                data_in_valid = #1 1'b1;
                @(posedge clock);
                data_in_valid = #1 1'b0;
                data_in = #1 (data_in + 8'h1);

                clocks_to_wait = $dist_exponential(dist_uniform_seed0, PRESUMED_SYS_CLOCKS_PER_UART_BYTE / lumpiness);
                for (k = 0; k < clocks_to_wait; k = k + 1) begin
                    @(posedge clock);
                end
                clocks_waited = clocks_waited + clocks_to_wait;
            end
            extra_clocks_to_wait = (BUF_SIZE * PRESUMED_SYS_CLOCKS_PER_UART_BYTE) - clocks_waited;
            $display("Giving the buffer %d clock cycles to clear out...", extra_clocks_to_wait);
            for (j = 0; j < extra_clocks_to_wait; j = j + 1) begin
                @(posedge clock);
            end
        end

        $finish;
    end

endmodule
