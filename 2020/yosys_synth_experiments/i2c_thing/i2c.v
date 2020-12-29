module divide_by_n(input clk,
               input reset,
               output reg out);
    parameter N = 2;
    localparam cwidth = $clog2(N - 1);
    reg [cwidth - 1:0] counter;

    always @(posedge clk) begin
    if (reset) begin
        counter <= N - 1;
            out <= 1'b0;
    end else begin
        if (counter == 0) begin
            counter <= N - 1;
        end else begin
            counter <= counter - 1;
            end

            out <= (counter < (N >> 1)) ? 1'b1 : 1'b0;
        end
    end
endmodule


`define DEV_ID 8'h24
module i2c_initializer(
    input clock, //should be 12mhz
    input reset,

    inout hm01b0_sda,
    inout hm01b0_scl,
);
    reg sda,scl;
    assign hm01b0_sda = sda ? 1'bz : 1'b0;
    assign hm01b0_scl = scl ? 1'bz : 1'b0;

    wire scl_freq;
    //A11 = 12000000/(440*(2^7)) = 213.068
    defparam div.N = 213; //120 for 100khz, 30 for 400khz
    divide_by_n div(
        .clk(clock),
        .reset(reset),
        .out(scl_freq)
    );

    reg [23:0] mem [0:159];
    //integer i;
    initial begin
        $readmemh("i2c_bytes_formatted.hex", mem);

        //for (i = 0; i < 160; i = i + 1) begin
        //    $display("3Bytes: %d   %h", i+1, mem[i]);
        //end
    end

    reg [7:0] mem_adr; //2^8=256 > 160
    reg [7:0] mem_adr_next;

    reg [1:0] byte_adr; //2'b11 is dev_id
    reg [1:0] byte_adr_next;

    reg [3:0] bit_adr; //0-7, 8 is ack (9 to stop?)
    reg [3:0] bit_adr_next;

    reg sda_next;
    reg scl_next;
    reg scl_freq_prev;
    reg scl_freq_prev_prev;

    reg txing;
    reg txing_next;

    reg stopping;
    reg stopping_next;

    always @(posedge clock) begin
        sda <= sda_next;
        scl <= scl_next;
        mem_adr <= mem_adr_next;
        byte_adr <= byte_adr_next;
        bit_adr <= bit_adr_next;
        scl_freq_prev <= scl_freq;
        scl_freq_prev_prev <= scl_freq_prev;
        txing <= txing_next;
        stopping <= stopping_next;
    end

    always @* begin
        sda_next = sda;
        scl_next = scl;
        mem_adr_next = mem_adr;
        byte_adr_next = byte_adr;
        bit_adr_next = bit_adr;
        txing_next = txing;
        stopping_next = stopping;

        if (reset) begin
            sda_next = 1'b1;
            scl_next = 1'b1;
            mem_adr_next = 8'b0;
            byte_adr_next = 2'b11;
            bit_adr_next = 4'h7;
            txing_next = 1'b0;
            stopping_next = 1'b0;
        end else if (mem_adr >= 160) begin //done with transmissions
            sda_next = 1'b1;
        end else if (scl_freq && !scl_freq_prev) begin
            scl_next = 1'b1;
        end else if (scl_freq_prev && !scl_freq_prev_prev) begin //posedge scl - start, stop
            if (stopping) begin
                sda_next = 1'b1; //sda is ack:high, stopping:low, stop condition:high
                stopping_next = 1'b0;
                mem_adr_next = mem_adr + 8'b1;
            end else begin
                if (byte_adr == 2'b11 && bit_adr == 4'h7 && !txing) begin //start
                    txing_next = 1'b1;
                    sda_next = 1'b0;
                    //mem_adr_next = mem_adr + 8'b1;
                end else if (byte_adr == 2'b11 && bit_adr == 4'h7 && txing) begin //stop
                    txing_next = 1'b0;
                    stopping_next = 1'b1;
                end
            end

        end else if (!scl_freq && scl_freq_prev) begin // && txing) begin
            scl_next = 1'b0;
        end else if (!scl_freq_prev && scl_freq_prev_prev) begin //negedge scl - transmit
            if (stopping)
                sda_next = 1'b0;
            else if (txing) begin
                bit_adr_next = bit_adr - 4'b1;

                if (!bit_adr) begin
                    byte_adr_next = byte_adr + 2'b01;
                    bit_adr_next = 4'h8;
                end

                if (bit_adr == 4'h8)
                    sda_next = 1'b1;
                else if (byte_adr == 2'b11)
                    sda_next = !(!({`DEV_ID,1'b0} & (8'b1 << bit_adr)));
                else
                    sda_next = mem[mem_adr][{2'b10 - byte_adr, bit_adr[2:0]}];

            end
        end
    end


endmodule
