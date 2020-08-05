// i2c_peripheral_ebr_filler.v
// Reads 512 bytes from i2c, writes these to specified EBR
// i2c protocol: i2c addr, ebr select, byte 0 through byte 511
//
// Synthesizable module i2c_peripheral
// Simulated module i2c_controller
//
// copi: controller out peripheral in
// cipo: controller in peripheral out
//
// Assumptions: start condition functions as a reset: happens anytime, expect a device address
//              stop condition stops transaction regardless of when it happens
//              controller only modifies sda while clk reset. otherwise, start/stop condition
//              for this purpose, peripheral never has to transfer data. just ack/nack on cipo_sda


`timescale 1ns/100ps

`define DEVICE_ADDRESS (8'hFE) //technically gotta check if last bit is R/W
                               //however, here, controller only ever sends data, so bit 0 = 0
`define EBR_ADDRESS_0 (8'h00)
`define EBR_ADDRESS_1 (8'h01)

`define IDLE (2'b00) //wait here. if start, goto dev_adr.
`define DEV_ADR (2'b01) //wait here while reading in, counter++. if data=device_address, ack and goto ebr_adr. else, nack and goto idle. if start, restart dev_adr. if stop, goto idle.
`define EBR_ADR (2'b10) //wait here while reading in, counter++. if in=ebr_adress_0or1, ack and goto fill. else, nack and goto idle. if start, goto dev_adr. if stop, goto idle.
`define FILL (2'b11) //wait here while reading in, counter++. write data to ebr_adr each time counter = 8 then reset counter. if start, goto dev_adr. if stop, goto idle.

module i2c_peripheral(input            copi_scl,
                      input            copi_sda,
                      output reg       cipo_scl, //this = copi_scl, right?
                      output reg       cipo_sda,

                      output reg       ebr_select, //or just do the writes?
                      output reg       ebr_wren,
                      output reg [7:0] ebr_data_out
);
    //start/stop conditions not aligned to posedge copi_scl so need logic outside state machine

    //start
    always @(negedge copi_sda) begin
        if (copi_scl == 1'b1) begin
            state_next <= `DEV_ADR;
            data_next <= 8'h00;
            counter_next <= 4'h0;

            ebr_wren <= 1'b0;
        end
    end

    //stop
    always @(posedge copi_sda) begin
        if (copi_scl == 1'b1) begin
            state_next <= `IDLE;
            data_next <= 8'h00;
            counter_next <= 4'h0;

            ebr_wren <= 1'b0;
        end
    end

    //states: IDLE, DEV_ADR, EBR_ADR, WRITE
    reg [1:0] state;
    reg [1:0] state_next;

    //populate full byte as bits are sent
    reg [7:0] data;
    reg [7:0] data_next;

    //counter to know when full addresses have been received
    reg [3:0] counter;
    reg [3:0] counter_next;

    //which ebr to write to
    reg ebr;

    //whether to send ack on next negedge copi_scl. nack happens through inaction
    reg ack = 1'b0;

    //keep fsm combinational but only happening after always block below
    reg curr_sda;

    initial begin
        state <= 0;
        data <= 0;
        counter <= 0;
        curr_sda <= 0;
        cipo_sda <= 0;
    end


    always @* begin //this should only happen on posedge copi_scl, after the always block below
        case (state)
            `IDLE: begin end //nop; wait for start condition

            `DEV_ADR: begin
                if (counter == 4'h8) begin
                    if (data == `DEVICE_ADDRESS) begin
                        state_next <= `EBR_ADR;
                    end else begin
                        state_next <= `IDLE;
                    end
                    data_next <= 8'h00;
                    counter_next <= 4'h0;
                end else begin
                    state_next <= `DEV_ADR;
                    data_next <= data | ({curr_sda,7'b0000000} >> counter);
                    counter_next <= counter + 4'h1;

                    if (counter == 4'h7 && data | ({curr_sda,7'b0000000} >> counter) == `DEVICE_ADDRESS) begin
                        ack <= 1'b1;
                    end
                end
            end

            `EBR_ADR: begin
                if (counter == 4'h8) begin
                    if (data == `EBR_ADDRESS_0) begin
                        ebr <= 1'b0;
                        state_next <= `FILL;
                    end else if (data == `EBR_ADDRESS_1) begin
                        ebr <= 1'b1;
                        state_next <= `FILL;
                    end else begin
                        state_next <= `IDLE;
                    end
                    data_next <= 8'h00;
                    counter_next <= 4'h0;
                end else begin
                    state_next <= `EBR_ADR;
                    data_next <= data | ({curr_sda,7'b0000000} >> counter);
                    counter_next <= counter + 4'h1;

                    if (counter == 4'h7 && (data | ({curr_sda,7'b0000000} >> counter) == `EBR_ADDRESS_0                                          || data | ({curr_sda,7'b0000000} >> counter) == `EBR_ADDRESS_1)) begin
                        ack <= 1'b1;
                    end
                end
            end

            `FILL: begin
                if (counter == 4'h8) begin
                    ebr_select <= ebr;
                    ebr_wren <= 1'b1;
                    ebr_data_out <= data;

                    data_next <= 8'h00;
                    counter_next <= 4'h0;
                end else begin
                    ebr_wren <= 1'b0;
                    data_next <= data | ({curr_sda,7'b0000000} >> counter);
                    counter_next <= counter + 4'h1;

                    if (counter == 4'h7)
                        ack <= 1'b1;
                end
                state_next <= `FILL;
            end
        endcase
    end

    always @(posedge copi_scl) begin
        state <= state_next;
        data <= data_next;
        counter <= counter_next;
        curr_sda <= copi_sda;
    end

    always @(negedge copi_scl) begin //negedge copi_scl bc master reads on posedge copi_scl?????
        if (ack == 1'b1) begin
            cipo_sda <= 1'b0; //pull low to ack
            ack = 1'b0;
        end else
            cipo_sda <= 1'b1; //release to stop ack
    end

    always @* begin
        cipo_scl <= copi_scl; //only purpose of having cipo_scl is for looking at gtkwave right?
    end

endmodule

`ifdef _NOT_DEFINED
module i2c_controller();
    reg copi_scl;
    reg copi_sda;
    wire cipo_scl;
    wire cipo_sda;

    wire       ebr_select;
    wire       ebr_wren;
    wire [7:0] ebr_data_out;

    i2c_peripheral ya_boi(.copi_scl(copi_scl),
                          .copi_sda(copi_sda),
                          .cipo_scl(cipo_scl),
                          .cipo_sda(cipo_sda),
                          .ebr_select(ebr_select),
                          .ebr_wren(ebr_wren),
                          .ebr_data_out(ebr_data_out)
    );


    reg ack = 0;
    initial begin
        $dumpfile("i2c_peripheral_ebr_filler.vcd");
        $dumpvars(0, i2c_controller);

        copi_sda = 1'b1;
        copi_scl = 1'b1;
        #1000;

        i2c_start();
        i2c_tx(`DEVICE_ADDRESS, ack);

        i2c_tx(`EBR_ADDRESS_0, ack);

        i2c_tx(8'b11100110, ack);

        i2c_tx(8'b00011001, ack);

        i2c_tx(8'b11111111, ack);

        i2c_tx(8'b00000000, ack);

        i2c_stop();
        #1000;

        i2c_start();
        i2c_tx(`DEVICE_ADDRESS, ack);

        i2c_tx(`EBR_ADDRESS_1, ack);

        i2c_tx(8'b01010101, ack);

        i2c_tx(8'b10101010, ack);

        i2c_tx(8'b11111110, ack);

        i2c_tx(8'b00000001, ack);

        i2c_stop();
        #1000;

        $display("1s are acks and 0s are nacks");
        //$finish;
    end

    //TASKS
    //use clock cycle = 1000
    task i2c_tx(input [7:0] byte, output reg ack);
        begin
            i2c_send_byte(byte);
            i2c_check_ack(ack);
        end
    endtask

    task i2c_start;
        begin
            //copi_scl should be high
            //copi_sda should be high
            copi_sda = 1'b0;
            #100;
        end
    endtask

    task i2c_stop;
        begin
            //copi_scl should be high
            //copi_sda should be low
            copi_sda = 1'b1;
            #100;
        end
    endtask

    task i2c_send_byte(input [7:0] byte);
        integer i;
        begin
            //copi_scl should be high
            //copi_sda should be low
            for (i = 7; i >= 0; i = i - 1) begin
                copi_scl = 1'b0;
                copi_sda = byte[i];
                #500;
                copi_scl = 1'b1;
                #500;
            end
        end
    endtask

    task i2c_check_ack(output reg ack); //ack = 1 if successfully acked, ack = 0 if not

        begin
            copi_scl = 1'b0;
            #500;
            copi_scl = 1'b1;
            ack = ~cipo_sda; //successful ack if cipo_sda low
            #500;
        end
    endtask

    //any more?

endmodule

#endif
