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
    output logic camera_0_xsleep
);
    assign camera_0_clksel = 1'b0;
    assign camera_0_xsleep = 1'b1;
    assign camera_0_xshut = 1'b1;

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
    i2c_initializer cam0_init (
        .clock(ftdi_clk_12m), .reset(sys_reset),
        .sda_io(camera_0_sda), .scl_io(camera_0_scl),
        .active()
    );

    ////////////////////////////////////////////////////////////////
    // camera reader
    camera_reader reader (
        .pixclk_i(camera_0_pclk), .pixel_data_i(camera_0_d),
        .hsync_i(camera_0_hsync), .vsync(camera_0_vsync),

        .pix_valid_o(), .pix_o(), .row_o(
    );

    always_comb begin
        j5_gpio[0 +: 4] = pixout_iface.row[0 +: 4];
        j5_gpio[4 +: 2] = pixout_iface.col[0 +: 2];
        j5_gpio[6] = pixout_iface.clk;
        j5_gpio[7] = pixout_iface.valid;
    end

    ////////////////////////////////////////////////////////////////
    // UART
    logic clk_baud;
    divide_by_n #(
        .N(15)
    ) baud_clk_divider (
        .clk(clk_pll), .reset(sys_reset), .out(clk_baud)
    );

    logic uart_data_valid;
    logic [7:0] uart_data;
    uart_tx uart_transmitter (
        .clk_i(clk_pll), .reset_i(sys_reset), .baud_clk_i(clk_baud),
        .data_valid_i(uart_data_valid), .data_i(uart_data),
        .uart_tx_o(sda_0_uart_tx), .uart_busy_o()
    );

    uart_traffic_generator uart_tgen (
        .clk_i(clk_pll), .reset_i(sys_reset),
        .uart_data_valid_o(uart_data_valid), .uart_data_o(uart_data)
    );

endmodule
