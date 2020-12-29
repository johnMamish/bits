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

module SB_SPRAM256KA (input [15:0] DATAIN,
                      input [13:0] ADDRESS,
                      input [3:0] MASKWREN,
                      input WREN,
                      input CHIPSELECT,//
                      input CLOCK,
                      input STANDBY,//
                      input SLEEP,//
                      input POWEROFF,//
                      output reg [15:0] DATAOUT
);

    //ignore standby,sleep,poweroff,chipselect

    reg [15:0] data [(2**14)-1:0];

    always @(posedge CLOCK) begin

        if (WREN) begin //write to spram
            if (MASKWREN == 4'b0011) begin
                data[ADDRESS][7:0] <= DATAIN[7:0];
            end else if (MASKWREN == 4'b1100) begin
                data[ADDRESS][15:8] <= DATAIN[15:8];
            end else begin
                //should never happen
            end

        end else begin //read from spram
            DATAOUT <= data[ADDRESS];
        end
    end

endmodule

module uart_tx(input       clock,
               input       reset,
               input       baud_clock,
               input       data_valid,
               input [7:0] data,

               output reg  uart_tx,
               output reg  uart_busy
);
    reg [9:0] shift_register; //1+8+1 for start+byte+stop
    reg [3:0] shift_counter;
    reg baud_clock_prev;
    always @(posedge clock) begin
        if (reset) begin
            shift_register <= 10'bxxx;
            shift_counter <= 4'b0;
            uart_tx <= 1'b1;
            uart_busy <= 1'b0;
        end else begin
            if (uart_busy) begin //sending byte
                if (shift_counter < 4'd10) begin //still sending
                    if (baud_clock && !baud_clock_prev) begin //posedge baud_clock
                        shift_register <= shift_register >> 1'b1;
                        shift_counter <= shift_counter + 4'h1;
                        uart_busy <= 1'b1;
                        uart_tx <= shift_register[0];
                    end else begin //waiting for baud
                        shift_register <= shift_register;
                        shift_counter <= shift_counter;
                        uart_busy <= uart_busy;
                        uart_tx <= uart_tx;
                    end
                end else begin //done sending
                    shift_register <= 10'hxxx;
                    shift_counter <= 4'b0;
                    uart_busy <= 1'b0;
                    uart_tx <= 1'b1; //this is always going to be 1 (stop bit) right?
                end
            end else begin //waiting to get byte
                uart_tx <= 1'b1;
                if (data_valid) begin
                    shift_register <= {1'b1, data, 1'b0}; //{stop,data,start}
                    shift_counter <= 4'h0;
                    uart_busy <= 1'b1;
                end else begin
                    shift_register <= shift_register;
                    shift_counter <= shift_counter;
                    uart_busy <= uart_busy;
                end
            end
        end
        baud_clock_prev <= baud_clock;
    end
endmodule


`define MAX_ADDRESS (15'h003F) //7FFF for full 32kB
`define CLOCK_DIVIDER (7'd104) //13 or 104 for standard bauds from 12mhz:
                //12_000_000 / 13  = 923_076.923 ~ 921_600
                //12_000_000 / 104 = 115_384.615 ~ 115_200

`define WRITE_0 (1'b0) //currently writing to spram_0/reading from spram_1
`define WRITE_1 (1'b1) //currently writing to spram_1/reading from spram_0

module spram_uart_buffer(input                         clock,
                         input                         reset,

                         // interface for writing into the buffer
                         input [7:0]                   data_in,

                         // on every clock rising edge where data_in_valid is 1, you should insert
                         // data_in into your buffer.
                         input                         data_in_valid,

                         // UART output. Should be 115,200 or 921,600 or something like that. For
                         // the time being, drive the uart baud rate clock from the input system
                         // clock. You can assume that the input system clock is 12MHz.
                         output reg                    uart_tx
);




    reg [7:0] data_in_reg;
    reg [7:0] data_in_reg_next; //put data_in here to be spram input next cycle

    reg [14:0] address_0; //lsb is byte select
    reg [14:0] address_0_next;

    reg [14:0] address_1;
    reg [14:0] address_1_next;

    reg wren_0; //write enable when wren == 1
    reg wren_0_next;

    reg wren_1;
    reg wren_1_next;

    wire [15:0] data_out_0; //driven by spram
    wire [15:0] data_out_1;

    reg spram_flag; //this just delays incrementing address being written to by 1... bad design
    reg spram_flag_next;

    SB_SPRAM256KA spram_0(
        .DATAIN({data_in_reg, data_in_reg}),
        .ADDRESS(address_0[14:1]),
        .MASKWREN({{2{address_0[0]}}, {2{!address_0[0]}}}), //0011 or 1100 for lsB or msB
        .WREN(wren_0),
        .CHIPSELECT(1'b1),
        .CLOCK(clock),
        .STANDBY(1'b0), //fine to ignore these?
        .SLEEP(1'b0),
        .POWEROFF(1'b1),
        .DATAOUT(data_out_0)
    );

    SB_SPRAM256KA spram_1(
        .DATAIN({data_in_reg, data_in_reg}),
        .ADDRESS(address_1[14:1]),
        .MASKWREN({{2{address_1[0]}}, {2{!address_1[0]}}}),
        .WREN(wren_1),
        .CHIPSELECT(1'b1),
        .CLOCK(clock),
        .STANDBY(1'b0),
        .SLEEP(1'b0),
        .POWEROFF(1'b1),
        .DATAOUT(data_out_1)
    );

    reg [6:0] counter; //big enough to fit 104
    reg [6:0] counter_next;

    reg baud_clock;
    reg baud_clock_next;

    reg uart_data_valid;
    //reg uart_data_valid[0:1];
    reg uart_data_valid_next;

    reg [7:0] uart_data;
    reg [7:0] uart_data_next;

    wire uart_tx_wire;

    wire uart_busy; //driven by uart_tx

    reg uart_flag; //this exists bc uart_busy takes a cycle to propagate
    reg uart_flag_next;

    uart_tx ut(.clock(clock),
               .reset(reset),
               .baud_clock(baud_clock),
               .data_valid(uart_data_valid), //[1]),
               .data(uart_data),
               .uart_tx(uart_tx_wire),
               .uart_busy(uart_busy));

    reg state, state_prev;
    reg state_next;

    reg state_flag; //wait to start tx after state change to give stuff time to propagate
    reg state_flag_next;

    reg max_address_flag; //stop sending after max address reached
    reg max_address_flag_next;

    always @* begin

        data_in_reg_next = data_in;
        if (reset) begin
            state_next = `WRITE_0;
            state_flag_next = 1'b1;
            max_address_flag = 1'b1; //address_1 == max_address to not send anything on reset

            address_0_next = 15'b0; //spram
            address_1_next = `MAX_ADDRESS;
            wren_0_next = 1'b0;
            wren_1_next = 1'b0;
            spram_flag_next = 1'b0;

            counter_next = 7'b0; //uart
            baud_clock_next = 1'b0;
            uart_data_valid_next = 1'b0;
            uart_data_next = 8'hxx;
            uart_flag_next = 1'b0;

        end else begin
            case (state)
                `WRITE_0: begin

                    //data -> spram
                    wren_1_next = 1'b0;

                    if (data_in_valid) begin
                        if (!spram_flag && address_0 == 15'b0) begin
                            spram_flag_next = 1'b1;
                            address_0_next = address_0;
                        end else begin
                            address_0_next = address_0 + 15'b1;
                            spram_flag_next = 1'b0;
                        end
                        //address_0_next = address_0 + 15'b1;
                        wren_0_next = 1'b1;

                        if (address_0 == `MAX_ADDRESS - 15'b1)
                            state_next = `WRITE_1;
                        else
                            state_next = `WRITE_0;

                    end else begin
                        state_next = `WRITE_0;
                        address_0_next = address_0;
                        wren_0_next = 1'b0;
                        spram_flag_next = spram_flag;
                    end

                    //baud
                    if (counter == `CLOCK_DIVIDER >> 1) begin
                        baud_clock_next = 1'b1;
                    end

                    if (counter == `CLOCK_DIVIDER) begin
                        baud_clock_next = 1'b0;
                        counter_next = 7'b0;
                    end else begin
                        counter_next = counter + 7'b1;
                    end

                    //spram -> uart
                    if (uart_busy || max_address_flag || uart_flag || state_flag) begin
                        uart_data_valid_next = 1'b0;
                        uart_data_next = 8'hxx;
                        address_1_next = address_1;
                        uart_flag_next = 1'b0;
                        state_flag_next = 1'b0;
                        max_address_flag_next = max_address_flag;
                    end else begin //transmit
                        uart_data_valid_next = 1'b1;
                        uart_data_next = address_1[0] ? data_out_1[15:8] : data_out_1[7:0];
                        address_1_next = address_1 + 15'b1;
                        uart_flag_next = 1'b1;
                        state_flag_next = 1'b0;
                        max_address_flag_next = (address_1 == `MAX_ADDRESS) ? 1'b1 : 1'b0;
                    end
                end

                `WRITE_1: begin

                    //data -> spram
                    wren_0_next = 1'b0;

                    if (data_in_valid) begin
                        if (!spram_flag && address_1 == 15'b0) begin
                            spram_flag_next = 1'b1;
                            address_1_next = address_1;
                        end else begin
                            address_1_next = address_1 + 15'b1;
                            spram_flag_next = 1'b0;
                        end
                        //address_1_next = address_1 + 15'b1;
                        wren_1_next = 1'b1;

                        if (address_1 == `MAX_ADDRESS - 15'b1)
                            state_next = `WRITE_0;
                        else
                            state_next = `WRITE_1;

                    end else begin
                        state_next = `WRITE_1;
                        address_1_next = address_1;
                        wren_1_next = 1'b0;
                        spram_flag_next = spram_flag;
                    end

                    //baud
                    if (counter == `CLOCK_DIVIDER >> 1) begin
                        baud_clock_next = 1'b1;
                    end

                    if (counter == `CLOCK_DIVIDER) begin
                        baud_clock_next = 1'b0;
                        counter_next = 7'b0;
                    end else begin
                        counter_next = counter + 7'b1;
                    end

                    //spram -> uart
                    if (uart_busy || max_address_flag || uart_flag || state_flag) begin
                        uart_data_valid_next = 1'b0;
                        uart_data_next = 8'hxx;
                        address_0_next = address_0;
                        uart_flag_next = 1'b0;
                        state_flag_next = 1'b0;
                        max_address_flag_next = max_address_flag;
                    end else begin //transmit
                        uart_data_valid_next = 1'b1;
                        uart_data_next = address_0[0] ? data_out_0[15:8] : data_out_0[7:0];
                        address_0_next = address_0 + 15'b1;
                        uart_flag_next = 1'b1;
                        state_flag_next = 1'b0;
                        max_address_flag_next = (address_0 == `MAX_ADDRESS) ? 1'b1 : 1'b0;
                    end
                end
            endcase
        end
    end

    always @(posedge clock) begin
        state <= state_next;
        state_prev <= state;

        data_in_reg <= data_in_reg_next;
        uart_tx <= uart_tx_wire;

        counter <= counter_next;
        baud_clock <= baud_clock_next;

        uart_flag <= uart_flag_next;

        spram_flag <= spram_flag_next;

        //this is bad design oops
        if (state_prev != state) begin
            address_0 <= 15'h0;
            address_1 <= 15'h0;
            wren_0 <= 1'b0;
            wren_1 <= 1'b0;

            //wren_0 <= wren_0_next;
            //wren_1 <= wren_1_next;
            //this handles the last write before the change of state
            /*if (state_next == `WRITE_0) begin //horrible design whoooops
                wren_0 <= 1'b0;
                wren_1 <= 1'b1;
            end else begin
                wren_0 <= 1'b1;
                wren_1 <= 1'b0;
            end*/

            uart_data_valid <= 1'b0;
            //uart_data_valid[0] <= 1'b0;
            //uart_data_valid[1] <= 1'b0;
            uart_data <= 8'hxx;

            state_flag <= 1'b1;
            max_address_flag <= 1'b0;
        end else begin
            address_0 <= address_0_next;
            address_1 <= address_1_next;
            wren_0 <= wren_0_next;
            wren_1 <= wren_1_next;

            uart_data_valid <= uart_data_valid_next;
            //uart_data_valid[1] <= uart_data_valid[0];
            //uart_data_valid[0] <= uart_data_valid_next;
            uart_data <= uart_data_next;

            state_flag <= 1'b0;
            max_address_flag <= max_address_flag_next;
        end
    end
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
    spram_uart_buffer sender(.clock(clock),
                             .reset(reset),
                             .data_in(data_in),
                             .data_in_valid(data_in_valid),
                             .uart_tx(uart_tx));


    // used for statistical modelling of data input rate.
    localparam PRESUMED_UART_CLOCKS_PER_BYTE = 10;
    localparam integer PRESUMED_SYS_CLOCKS_PER_UART_BYTE = $ceil(SYS_CLOCK_FREQ /
                                                                 (115200 / PRESUMED_UART_CLOCKS_PER_BYTE));
    localparam m = PRESUMED_SYS_CLOCKS_PER_UART_BYTE / 2;

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

        for (i = 0; i < 500; i = i + 1) begin
            $display("on byte %d", i);

            //data_in = #1 (data_in + 8'h1);
            data_in_valid = #1 1'b1;
            @(posedge clock);
            data_in_valid = #1 1'b0;
            data_in = #1 (data_in + 8'b1);

            for(j = 0; j < `CLOCK_DIVIDER * 14; j = j + 1) begin
                @(posedge clock);
            end
        end
        for (i = 0; i < 64; i = i + 1) begin
            $display("%h: %h", i, sender.spram_0.data[i]);
        end
        /*
        for (i = 0; i < 6000; i = i + 1) begin : loop
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
        */

        $finish;
    end
endmodule

/**
 * When starting out with the testbench, you might want to artificially fake the SPRAM to be
 * smaller. When working with a 32KB SPRAM, your simulation will need to be hundreds of thousands
 */
/*
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
*/
