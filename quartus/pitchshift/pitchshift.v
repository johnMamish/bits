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

// on every edge of LRCK, the data held at data_to_send is latched and sent.
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

module i2s_ingester(input                    clock,
                    input                    reset,

                    // output
                    output reg               data_valid,
                    output reg signed [23:0] data_l,
                    output reg signed [23:0] data_r,

                    // i2s
                    input                    BCK,
                    input                    LRCK,
                    input                    DAT);
    reg [5:0] bitcount;

    //always @(posedge
endmodule

module pitchshift(input                CLOCK_50,

                  // i2c (for configuring wm8731)
                  inout                 I2C_SCLK,
                  inout                 I2C_SDAT,

                  // NES controller (for fun?)
                  output                NES_PS,
                  output                NES_CK,
                  input                 NES_DO,

                  // wm8731 clock + i2s interface
                  output                AUD_XCK,
                  output                AUD_BCLK,
                  output                AUD_DACLRCK,
                  output                AUD_DACDAT,

                  output                AUD_ADCLRCK,
                  input                 AUD_ADCDAT,

                  // debug outputs
                  output          [17:0] LEDR,
                  output          [32:0] GPIO_0);

    // i2c tristating circuitry
    wire scl_in, sda_in, scl_o, sda_o;
    assign I2C_SDAT = sda_o ? 1'bz : 1'b0; assign sda_in = I2C_SDAT;
    assign I2C_SCLK = scl_o ? 1'bz : 1'b0; assign scl_in = I2C_SCLK;

    // debug outputs for wm8731 audio bus
    assign GPIO_0[7:0] = { AUD_ADCDAT, AUD_ADCLRCK, AUD_DACDAT, AUD_DACLRCK, AUD_BCLK, AUD_XCK, I2C_SCLK, I2C_SDAT };

    // clock divider and reset circuitry
    wire reset, clk_12_5;
    divide_by_n #(.N(4)) clk_12_5_divider(.clk(CLOCK_50), .reset(reset), .out(clk_12_5));
    resetter #(.count_maxval(100000)) resetter(.clock(CLOCK_50), .reset(reset));

    wm_setter_upper wm8731_init(.clock(clk_12_5), .reset(reset),
                                .scl_o(scl_o), .sda_o(sda_o), .scl_in(scl_in), .sda_in(sda_in));


    assign AUD_XCK = clk_12_5;

    //
    wire [7:0] buttons;
    nes_controller_reader controller_reader(.clock(clk_12_5), .reset(reset),
                                            .controller_data(NES_DO), .ps(NES_PS), .ck(NES_CK),
                                            .buttons(buttons));
    assign LEDR[7:0] = buttons;

    // read
    wire [23:0] d;
    beeper_triangle triangle_gen(.clock(AUD_DACLRCK), .reset(reset), .data(d));
    i2s i2s(.clock(clk_12_5), .reset(reset), .BCK(AUD_BCLK), .LRCK(AUD_DACLRCK), .DAT(AUD_DACDAT), .data_to_send(d));
    assign AUD_ADCLRCK = AUD_DACLRCK;
endmodule
