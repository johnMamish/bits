/**
 * This module takes parallel data in and transmits it over UART.
 *
 * Because data presented at the input port might arrive much faster than you'll be able to
 * transmit it over uart, you'll need to maintain a buffer. To save other on-chip resources, this
 * buffer should be implemented using at least 2 single-port RAM (SPRAM) blocks. To accomodate the
 * use of SPRAM, it's ok for your module to wait an arbitrary amount of time before sending a
 * byte that it has recieved. If RAM #0 is being filled with data, and RAM #1 has no more data left
 * to send, you can wait until RAM #0 is completely full before you start transmitting its data.
 *
 * On average, data will not arrive faster than you can transmit it.
 */

`timescale 1ns/100ps

module uart_spram_buffer(input                         clock,
                         input                         reset,

                         // interface for writing into the buffer
                         input [7:0]                   data_in,

                         // on every clock rising edge where data_in_valid is 1, you should insert
                         // data_in into your buffer.
                         input                         data_in_valid,

                         // UART output. Should be 115,200 or 921,600 or something like that. For
                         // the time being, drive the uart baud rate clock from the input system
                         // clock. You can assume that the input system clock is 12MHz.
                         output                        uart_tx);
    assign uart_tx = 1'b0;
endmodule


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
    always begin
        clock = 1'b0;
        #((1E9 / SYS_CLOCK_FREQ) / 2);
        clock = 1'b1;
        #((1E9 / SYS_CLOCK_FREQ) / 2);
    end

    reg [7:0] data_in;
    reg       data_in_valid;
    wire uart_tx;
    uart_spram_buffer sender(.clock(clock),
                             .reset(reset),
                             .data_in(data_in),
                             .data_in_valid(data_in_valid),
                             .uart_tx(uart_tx));

    // used for statistical modelling of data input rate.
    localparam PRESUMED_UART_CLOCKS_PER_BYTE = 10;
    localparam integer PRESUMED_SYS_CLOCKS_PER_UART_BYTE = $ceil(SYS_CLOCK_FREQ /
                                                                 (115200 / PRESUMED_UART_CLOCKS_PER_BYTE));
    localparam m = 4;

    // random tip I found out: In Verilog, you can name blocks. If you do this, you're allowed to
    // declare integers inside the block. I usually name my testbench 'initial begin' block "main".
    initial begin : main
        integer i;
        integer dist_uniform_seed0, dist_uniform_seed1;
        dist_uniform_seed0 = 100; dist_uniform_seed1 = 1;

        $dumpfile("./uart_spram_buffer.vcd");
        $dumpvars(0, testbench);

        // hold reset high for 2 clock cycles
        data_in = 8'h00;
        data_in_valid = 1'b0;
        reset = 1'b1;
        @(posedge clock); @(posedge clock);
        reset = #1 1'b0;

        for (i = 0; i < 7000; i = i + 1) begin : loop
            integer j;
            integer clocks_to_wait;

            $display("on byte %d", i);

            data_in_valid = #1 1'b1;
            @(posedge clock);
            data_in_valid = #1 1'b0;
            data_in = #1 (data_in + 8'h1);

            // hacky way to keep average rate fixed but have a bunch of writes in a row.
            // This makes the writes very “lumpy”. Simulation will take a long long time.
            clocks_to_wait = $dist_uniform(dist_uniform_seed0, 0, PRESUMED_SYS_CLOCKS_PER_UART_BYTE);
            if (clocks_to_wait == PRESUMED_SYS_CLOCKS_PER_UART_BYTE) begin
                clocks_to_wait = ((PRESUMED_SYS_CLOCKS_PER_UART_BYTE ** 2) -
                                 PRESUMED_SYS_CLOCKS_PER_UART_BYTE + 1) * (m / 2) - 1;
            end else begin
                clocks_to_wait = $dist_uniform(dist_uniform_seed1, 0, m - 1);
            end

            for (j = 0; j < clocks_to_wait; j = j + 1) begin
                @(posedge clock);
            end
        end

        $finish;
    end
endmodule
