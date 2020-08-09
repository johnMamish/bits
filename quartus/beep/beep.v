module divide_by_n(input clk,
	           input reset,
	           output out);
    parameter N = 2;
    localparam cwidth = $clog2(N - 1);
    reg [cwidth - 1:0] counter;
    initial counter = 0;

    assign out = (counter < (N >> 1)) ? 1'b1 : 1'b0;

    always @(posedge clk) begin
	if (reset) begin
	  counter <= N - 1;
	end else begin
	  if (counter == 0) begin
	      counter <= N - 1;
	  end else begin
	      counter <= counter - 1;
          end
        end
    end
endmodule

module resetter(input      clock,
                output     reset);
    parameter count_maxval = 255;
    localparam count_width = $clog2(count_maxval);

    reg [count_width - 1:0] reset_count;
    assign reset = (reset_count == count_maxval) ? 1'b0 : 1'b1;
    initial reset_count = 'h0;

    always @(posedge clock) begin
        reset_count <= (reset_count == count_maxval) ? count_maxval : reset_count + 'h01;
    end
endmodule


/**
 * Waits for "pulse_delay" clock cycles, then holds "pulse" high for "pulse_width" cycles.
 */
module pulse_one(input clock,
                 input reset,
                 output pulse);
    parameter pulse_delay = 511;
    parameter pulse_width = 15;
    localparam pulse_maxval = pulse_delay + pulse_width + 1;
    localparam pulse_bitwidth = $clog2(pulse_maxval);

    reg [pulse_bitwidth - 1 : 0] count;
    initial count = {{pulse_bitwidth{1'b0}}};

    assign pulse = ((count > pulse_delay) && (count < pulse_maxval));

    always @(posedge clock) begin
        if (!reset) begin
            count <= (count == pulse_maxval) ? pulse_maxval : count + 'h01;
        end else begin
            count <= {{pulse_bitwidth{1'b0}}};
        end
    end
endmodule


module wm_setter_upper(input        clock,
                       input        reset,
                       output       scl_o,
                       output       sda_o,
                       input        scl_in,
                       input        sda_in);
    wire [6:0] i2c_init_cmd_address;
    wire i2c_init_cmd_start, i2c_init_cmd_read, i2c_init_cmd_write, i2c_init_cmd_write_multiple;
    wire i2c_init_cmd_stop, i2c_init_cmd_valid, i2c_init_cmd_ready;
    wire [7:0] i2c_init_data_controller_to_peripheral;
    wire i2c_init_data_controller_to_peripheral_valid, i2c_init_data_controller_to_peripheral_ready;
    wire i2c_init_data_controller_to_peripheral_last;
    wire i2c_init_busy, i2c_init_start;
    i2c_init i2c_init(.clk(clock),
                      .rst(reset),
                      .cmd_address(i2c_init_cmd_address),
                      .cmd_start(i2c_init_cmd_start),
                      .cmd_read(i2c_init_cmd_read),
                      .cmd_write(i2c_init_cmd_write),
                      .cmd_write_multiple(i2c_init_cmd_write_multiple),
                      .cmd_stop(i2c_init_cmd_stop),
                      .cmd_valid(i2c_init_cmd_valid),
                      .cmd_ready(i2c_init_cmd_ready),

                      .data_out(i2c_init_data_controller_to_peripheral),
                      .data_out_valid(i2c_init_data_controller_to_peripheral_valid),
                      .data_out_ready(i2c_init_data_controller_to_peripheral_ready),
                      .data_out_last(i2c_init_data_controller_to_peripheral_last),

                      .busy(i2c_init_busy),
                      .start(i2c_init_start));

    pulse_one i2c_init_start_pulse(.clock(clock), .reset(reset), .pulse(i2c_init_start));
    defparam i2c_init_start_pulse.pulse_delay = 50000;
    defparam i2c_init_start_pulse.pulse_width = 4;

    i2c_master i2c_master(.clk(clock),
                          .rst(reset),
                          .cmd_address(i2c_init_cmd_address),
                          .cmd_start(i2c_init_cmd_start),
                          .cmd_read(i2c_init_cmd_read),
                          .cmd_write(i2c_init_cmd_write),
                          .cmd_write_multiple(i2c_init_cmd_write_multiple),
                          .cmd_stop(i2c_init_cmd_stop),
                          .cmd_valid(i2c_init_cmd_valid),
                          .cmd_ready(i2c_init_cmd_ready),

                          .data_in(i2c_init_data_controller_to_peripheral),
                          .data_in_valid(i2c_init_data_controller_to_peripheral_valid),
                          .data_in_ready(i2c_init_data_controller_to_peripheral_ready),
                          .data_in_last(i2c_init_data_controller_to_peripheral_last),

                          .data_out(),
                          .data_out_valid(),
                          //.data_out_ready(i2c_init_data_controller_to_peripheral_ready),
                          .data_out_last(),

                          .scl_i(scl_in), .scl_o(scl_o), .scl_t(),
                          .sda_i(sda_in), .sda_o(sda_o), .sda_t(),

                          // unused
                          .busy(), .bus_control(), .bus_active(), .missed_ack(),

                          .prescale(16'd20), .stop_on_idle(1'b1));
endmodule


module i2s(input clock,
           input reset,

           input [23:0] data_to_send,

           output BCK,
           output reg LRCK,
           output  DAT);
    reg [5:0] ptr;
    reg [5:0] bitcount;

    reg [31:0] data_shift;

    assign DAT = data_shift[31];

    divide_by_n div_256(.clk(clock), .reset(reset), .out(BCK));
    defparam div_256.N = 4;

    reg bck_prev;

    always @(posedge clock) begin
        if (!reset) begin
            bck_prev <= BCK;

            if (bck_prev & !BCK) begin
                if (bitcount == 31) begin
                    LRCK <= !LRCK;
                    bitcount <= 0;
                    ptr <= ptr + 1;
                    //data_shift <= ptr[5] ? (32'sh8000_0000 >>> 5) : (32'sh7fff_ffff >>> 5);
                    data_shift <= { 1'h0, data_to_send, 7'h0 };
                end else begin
                    LRCK <= LRCK;
                    bitcount <= bitcount + 'h1;
                    ptr <= ptr;
                    data_shift <= data_shift << 1;
                end
            end else begin
                LRCK <= LRCK;
                bitcount <= bitcount;
                ptr <= ptr;
                data_shift <= data_shift;
            end
        end else begin
            bitcount <= 0;
            ptr <= 0;
            bck_prev <= 0;
            LRCK <= 0;
            data_shift <= 0;
        end
    end

endmodule

// expects a 12.5 MHz clock
module nes_controller_reader(input               clock,
                             input               reset,

                             // controller interface
                             input               controller_data,
                             output reg          ps,           // strobe line?
                             output reg          ck,           // clock. Aim for 10kHz, I guess?
                             output              div_out,

                             // bits
                             output reg [7:0]    buttons);
    wire div_clk;
    assign div_out = div_clk;
    divide_by_n div(.clk(clock), .reset(reset), .out(div_clk));
    defparam div.N = 128;

    reg [8:0] state;
    reg [7:0] buttons_latch, buttons_latch_next, buttons_next;
    always @(posedge div_clk) begin
        if (!reset) begin
            state <= state + 9'h001;
            buttons_latch <= buttons_latch_next;
            buttons <= buttons_next;
        end else begin
            state <= 9'h000;
            buttons_latch <= 8'h00;
            buttons <= 8'h00;
        end
    end

    always @* begin
        buttons_next = buttons;
        case (state)
            9'h000: begin
                {ps, ck} = {1'b1, 1'b0};
                buttons_latch_next = buttons_latch;
                buttons_latch_next[state[3:1]] = controller_data;
            end

            9'h003, 9'h005, 9'h007, 9'h009, 9'h00b, 9'h00d, 9'h00f: begin
                {ps, ck} = {1'b0, 1'b1};
                buttons_latch_next = buttons_latch;
            end

            9'h004, 9'h006, 9'h008, 9'h00a, 9'h00c, 9'h00e, 9'h010: begin
                {ps, ck} = {1'b0, 1'b0};
                buttons_latch_next = buttons_latch;
                buttons_latch_next[state[4:1] - 3'h1] = controller_data;
            end

            9'h011: begin
                {ps, ck} = {1'b0, 1'b1};
                buttons_latch_next = buttons_latch;
                buttons_next = ~buttons_latch;
            end

            default: begin
                {ps, ck} = 2'h0;
                buttons_latch_next = buttons_latch;
                buttons_next = buttons;
            end
        endcase
    end
endmodule


// outputs a 2's complement triangle wave.
module beeper_triangle(input      clock,
                       input      reset,

                       output [23:0] data);
    // in clocks. hackety.
    parameter real freq = 130.81;
    parameter real fsamp = 48000;
    localparam [31:0] maxvalue = 32'h1000_0000;
    localparam [31:0] delta_y = (freq / fsamp) * maxvalue;

    reg [31:0] count;
    assign data = count[31:8];
    always @(posedge clock) begin
        count <= ((count + delta_y) >= maxvalue) ? (count + delta_y - maxvalue) : (count + delta_y);
        //data <= (23'h01_0000 * count) / 256;
    end
endmodule


module beep(input                 CLOCK_50,
            inout                 I2C_SCLK,
            inout                 I2C_SDAT,

            output          [7:0] GPIO_0,

            output            AUD_XCK,

            output                NES_PS,
            output                NES_CK,
            input                 NES_DO,

            output                AUD_BCLK,
            output             AUD_DACLRCK,
            output             AUD_ADCLRCK,
            output             AUD_DACDAT,

            output          [7:0] LEDR);

    wire scl_in, sda_in, scl_o, sda_o;
    assign I2C_SDAT = sda_o ? 1'bz : 1'b0;
    assign sda_in = I2C_SDAT;
    assign I2C_SCLK = scl_o ? 1'bz : 1'b0;
    assign scl_in = I2C_SCLK;

    //assign GPIO_0[4:0] = { NES_PS, NES_CK, NES_DO, scl_in, sda_in };
    assign GPIO_0[4:0] = { AUD_BCLK, AUD_DACLRCK, AUD_DACDAT, scl_in, sda_in };

    // 12.5 MHz clock is the MCK for the WM8731 chip
    reg divider_25, clk_12_5;
    always @(posedge CLOCK_50) divider_25 <= ~divider_25;
    always @(posedge divider_25) clk_12_5 <= ~clk_12_5;

    assign AUD_XCK = clk_12_5;
    assign AUD_ADCLRCK = AUD_DACLRCK;

    // resetter
    wire reset;
    resetter r(.clock(clk_12_5), .reset(reset));
    defparam r.count_maxval = 20000;

    wire reset2;
    resetter r2(.clock(clk_12_5), .reset(reset2));
    defparam r2.count_maxval = 2000000;


    nes_controller_reader reader(.clock(clk_12_5), .reset(reset), .div_out(GPIO_0[5]),
                                 .controller_data(NES_DO), .ps(NES_PS), .ck(NES_CK),

                                 .buttons(LEDR[7:0]));

    // i2c for wm8731 setup
    wm_setter_upper init(.clock(clk_12_5), .reset(reset),
                         .scl_o(scl_o), .sda_o(sda_o), .scl_in(scl_in), .sda_in(sda_in));


/*    real freqs [0:7];
    initial begin
        freqs[0] = 130.81; freqs[1] = 146.83; freqs[2] = 164.81; freqs[3] = 196.00; freqs[4] = 220.00;
        freqs[5] = 261.63; freqs[6] = 293.66; freqs[7] = 329.63;
    end*/
    genvar i;
    reg [23:0] triangles [0:7];
    wire [7:0] button_remap_bits = {LEDR[0], LEDR[1], LEDR[3], LEDR[2], LEDR[7], LEDR[4], LEDR[6], LEDR[5]};
    generate
        for (i = 0; i < 8; i = i + 1) begin: wavies
            wire [23:0] d;
            beeper_triangle triangle_gen(.clock(AUD_DACLRCK), .reset(reset), .data(d));
            /*defparam triangle_gen.freq = (i == 0) ? 130.81 * 0.4:
                                         (i == 1) ? 146.83 * 0.4:
                                         (i == 2) ? 164.81 * 0.4:
                                         (i == 3) ? 196.00 * 0.4:
                                         (i == 4) ? 220.00 * 0.4:
                                         (i == 5) ? 261.63 * 0.4:
                                         (i == 6) ? 293.66 * 0.4:
                                         (i == 7) ? 329.63 * 0.4: 100;*/
            defparam triangle_gen.freq = (i == 0) ? 41.20 * 1.5 :
                                         (i == 1) ? 49.00 * 1.5 :
                                         (i == 2) ? 55.00 * 1.5 :    // E
                                         (i == 3) ? 65.41 * 1.5 :    // G
                                         (i == 4) ? 73.42 * 1.5 :    // A
                                         (i == 5) ? 82.41 * 1.5 :    // B
                                         (i == 6) ? 98.00 * 1.5 :    // D
                                         (i == 7) ? 110.00 * 1.5 : 100;

            // Because we're dividing down from a 50MHz clock, we can't get exactly to a 48kHz
            // sample clock. We divide our 50MHz clock by 1024 and get a sample clock of 48828.125.
            defparam triangle_gen.fsamp = 48828.125;

            always @* begin
                if (button_remap_bits[i]) begin
                    triangles[i] = d;
                end else begin
                    triangles[i] = 24'h0;
                end
            end
        end
    endgenerate

    reg [23:0] d;
    always @* begin: summer
        integer i;
        d = 0;
        for (i = 0; i < 8; i = i + 1) begin
            d = d + triangles[i];
        end
        d = d >> 2;
    end
    i2s i2s(.clock(clk_12_5), .reset(reset2), .BCK(AUD_BCLK), .LRCK(AUD_DACLRCK), .DAT(AUD_DACDAT), .data_to_send(d));
endmodule
