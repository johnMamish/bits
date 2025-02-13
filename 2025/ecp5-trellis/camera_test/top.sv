// diamond 3.7 accepts this PLL
// diamond 3.8-3.9 is untested
// diamond 3.10 or higher is likely to abort with error about unable to use feedback signal
// cause of this could be from wrong CPHASE/FPHASE parameters
module pll
(
    input clkin, // 12 MHz, 0 deg
    output clkout0, // 57.6 MHz, 0 deg
    output locked
);
(* FREQUENCY_PIN_CLKI="12" *)
(* FREQUENCY_PIN_CLKOP="60" *)
(* ICP_CURRENT="12" *) (* LPF_RESISTOR="8" *) (* MFG_ENABLE_FILTEROPAMP="1" *) (* MFG_GMCREF_SEL="2" *)
EHXPLLL #(
        .PLLRST_ENA("DISABLED"),
        .INTFB_WAKE("DISABLED"),
        .STDBY_ENABLE("DISABLED"),
        .DPHASE_SOURCE("DISABLED"),
        .OUTDIVIDER_MUXA("DIVA"),
        .OUTDIVIDER_MUXB("DIVB"),
        .OUTDIVIDER_MUXC("DIVC"),
        .OUTDIVIDER_MUXD("DIVD"),
        .CLKI_DIV(5),
        .CLKOP_ENABLE("ENABLED"),
        .CLKOP_DIV(5),
        .CLKOP_CPHASE(2),
        .CLKOP_FPHASE(0),
        .FEEDBK_PATH("CLKOP"),
        .CLKFB_DIV(25)
    ) pll_i (
        .RST(1'b0),
        .STDBY(1'b0),
        .CLKI(clkin),
        .CLKOP(clkout0),
        .CLKFB(clkout0),
        .CLKINTFB(),
        .PHASESEL0(1'b0),
        .PHASESEL1(1'b0),
        .PHASEDIR(1'b1),
        .PHASESTEP(1'b1),
        .PHASELOADREG(1'b1),
        .PLLWAKESYNC(1'b0),
        .ENCLKOP(1'b0),
        .LOCK(locked)
);
endmodule

`include "image_sensor_interface.svh"
`include "pixel_data_interface.svh"

module top (
    // FTDI pins
    input ftdi_clk_12m,

    output logic sda_0_uart_tx,
    input scl_0_uart_rx,

    // LEDs and random GPIOs
    output logic [7:0] led,
    output logic [7:0] j5_gpio,
    input btn,

    ////////////////////////////////
    // Camera 0 interface
    // camera 0 pixel data
    input camera_0_pclk,
    input camera_0_hsync,
    input camera_0_vsync,
    input [7:0] camera_0_d,

    // camera 0 timing
    input camera_0_int,
    output logic camera_0_mclk,
    output logic camera_0_trig,

    // camera 0 i2c
    inout camera_0_sda,
    inout camera_0_scl,

    // camera 0 config
    output logic camera_0_xshut,
    output logic camera_0_clksel,
    output logic camera_0_xsleep,

    ////////////////////////////////
    // Camera 1 interface
    // camera 1 pixel data
    input camera_1_pclk,
    input camera_1_hsync,
    input camera_1_vsync,
    input [7:0] camera_1_d,

    // camera 0 timing
    input camera_1_int,
    output logic camera_1_mclk,
    output logic camera_1_trig,

    // camera 0 i2c
    inout camera_1_sda,
    inout camera_1_scl,

    // camera 0 config
    output logic camera_1_xshut,
    output logic camera_1_clksel,
    output logic camera_1_xsleep
);
    assign camera_0_clksel = 1'b0;
    assign camera_0_xshut = 1'b1;
    assign camera_0_mclk = 1'b0;
    assign camera_0_trig = 1'b0;

    assign camera_1_clksel = 1'b0;
    assign camera_1_xsleep = 1'b1;
    assign camera_1_xshut = 1'b1;
    assign camera_1_mclk = 1'b0;
    assign camera_1_trig = 1'b0;

    logic sys_reset;

    ////////////////////////////////////////////////////////////////
    // PLL
    // from an input clock of 12MHz, the PLL generates
    logic clk_pll;
    logic pll_locked;
    pll _pll (
        .clkin(ftdi_clk_12m), .clkout0(clk_pll), .locked(pll_locked)
    );

    always_comb led[7] = !pll_locked;

    ////////////////////////////////////////////////////////////////
    // reset logic
    always_comb sys_reset = (!pll_locked || (btn == 1'b0));

    ////////////////////////////////////////////////////////////////
    // LEDs
    logic [31:0] counter;
    always_ff @(posedge clk_pll) begin
        counter <= counter + 1;
        if (btn == 1'b0) counter <= 0;
    end

    always_comb begin
        led[6:0] = counter[20 +: 8];
    end

    ////////////////////////////////////////////////////////////////
    // i2c initialization
    logic i2c_shutter_trig;
    logic i2c_init_done;
    logic [15:0] i2c_init_addr;
    logic [7:0] i2c_init_data;
    logic [1:0] i2c_tx_phases;
    logic camera_0_vsync_i2c_domain;
    logic i2c_rw_bit;
    logic i2c_init_data_valid;
    logic i2c_transmitter_ready;
    i2c_transmitter_controller i2c_txctl (
        .clock(ftdi_clk_12m), .reset(sys_reset),
        .reg_addr_o(i2c_init_addr), .reg_data_o(i2c_init_data), .data_valid_o(i2c_init_data_valid),
        .rw_bit_o(i2c_rw_bit), .i2c_tx_phases_o(i2c_tx_phases),
        .i2c_transmitter_ready,
        .trigger_i({camera_0_vsync_i2c_domain, i2c_shutter_trig}),
        .trigger_o({camera_0_xsleep, i2c_init_done})
    );
    defparam i2c_txctl.INIT_FILE = "hm0360_initializer_program.hex";

    i2c_transmitter i2c_tx (
        .clock(ftdi_clk_12m), .reset(sys_reset),
        .reg_addr(i2c_init_addr), .reg_data(i2c_init_data), .data_valid(i2c_init_data_valid),
        .rw_bit(i2c_rw_bit), .phase_enable(i2c_tx_phases),
        .ready(i2c_transmitter_ready),
        .sda_io(camera_0_sda), .scl_io(camera_0_scl),
    );
    defparam i2c_tx.SCL_DIV = 50;

    localparam SHUTTER_PERIOD = 6000000;
    logic [30:0] count;
    always_ff @(posedge ftdi_clk_12m) begin
        if (count >= SHUTTER_PERIOD) begin
            count <= 0;
            i2c_shutter_trig <= 1;
        end else begin
            count <= count + 1;
            i2c_shutter_trig <= 0;
        end

        if (sys_reset || !i2c_init_done) begin
            count <= 0;
        end
    end

    // synchronize vsync into i2c controller domain
    always_ff @(posedge ftdi_clk_12m) begin
        localparam NDELAY = 3;
        automatic logic camera_0_vsync_q [NDELAY];
        camera_0_vsync_q[0] <= camera_0_vsync;
        for (int i = 1; i < NDELAY; i++) camera_0_vsync_q[i] <= camera_0_vsync_q[i-1];
        camera_0_vsync_i2c_domain <= ocamera_0_vsync_q[NDELAY-1];
    end

    ////////////////////////////////////////////////////////////////
    // camera reader
    logic reader_pix_valid;
    logic [7:0] reader_pix_data;
    logic [15:0] reader_row;
    logic [15:0] reader_col;
    logic async_fifo_rst;

    camera_reader reader (
        .pixclk_i(camera_0_pclk), .pixel_data_i(camera_0_d),
        .hsync_i(camera_0_hsync), .vsync_i(camera_0_vsync),

        .pix_valid_o(reader_pix_valid), .pix_o(reader_pix_data),
        .row_o(reader_row), .col_o(reader_col),

        .async_fifo_rst_o(async_fifo_rst)
    );

    ////////////////////////////////////////////////////////////////
    // TODO: module to stuff extra bytes into stream for alignment



    ////////////////////////////////////////////////////////////////
    // fifo between camera reader and UART

    // hacky solution to hold async fifo write side in reset
    logic do_fifo_read;
    logic fifo_almost_empty, fifo_empty, fifo_full;
    logic [7:0] fifo_data;
    async_fifo #(
        .DSIZE(8),
        .ASIZE(8),
        .FALLTHROUGH("FALSE")
    ) camera_pixel_fifo (
        .wclk(camera_0_pclk), .wrst_n(!async_fifo_rst),
        .winc(reader_pix_valid), .wdata(reader_pix_data),
        .wfull(fifo_full), .awfull(),

        .rclk(clk_pll), .rrst_n(!sys_reset),
        .rinc(do_fifo_read), .rdata(fifo_data),
        .rempty(fifo_empty), .arempty(fifo_almost_empty)
    );

    ////////////////////////////////////////////////////////////////
    // UART
    logic clk_baud;
    divide_by_n #(
        .N(15)
    ) baud_clk_divider (
        .clk(clk_pll), .reset(sys_reset), .out(clk_baud)
    );

    logic uart_busy;
    logic uart_data_valid;
    logic [7:0] uart_data;
    uart_tx uart_transmitter (
        .clk_i(clk_pll), .reset_i(sys_reset), .baud_clk_i(clk_baud),
        .data_valid_i(do_fifo_read), .data_i(fifo_data),
        .uart_tx_o(sda_0_uart_tx), .uart_busy_o(uart_busy)
    );

    ////////////////////////////////////////////////////////////////
    // suck from fifo into uart
    always_ff @(posedge clk_pll) begin
        do_fifo_read <= 0;
        if (!do_fifo_read) begin
            do_fifo_read <= !uart_busy && !(fifo_almost_empty || fifo_empty);
        end

        if (sys_reset) do_fifo_read <= 0;
    end

    ////////////////////////////////////////////////////////////////
    // debug pins
    always_comb begin
        j5_gpio[0] = camera_0_pclk;
        j5_gpio[1] = camera_0_hsync;
        j5_gpio[2] = camera_0_vsync;
        j5_gpio[3] = i2c_shutter_trig;
        j5_gpio[4] = i2c_transmitter_ready;
        j5_gpio[5] = camera_0_xsleep;
        j5_gpio[6] = uart_busy;
        j5_gpio[7] = fifo_almost_empty || fifo_empty;
    end

endmodule
