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
    input btn,

    // ft232h pins
    inout [7:0] ft245_async_d,

    // ACBUS0 / RXF#
    // "When low, there is data available in the FIFO which can be read by driving RD# low"
    input ft245_async_nrxf,

    // ACBUS1 / TXE#
    // "When low, data can be written into the FIFO by strobing WR# high, then low."
    input ft245_async_ntxe,

    // ACBUS2 / RD#
    // "Enables the current FIFO data byte to be driven onto D0...D7 when RD# goes low"
    // To be clear, bringing this high will cause the FT232H to write to the bus.
    output ft245_async_nrd,

    // ACBUS3 / WR#
    // "when WR# goes from high to low, D[7:0] on the bus wll be written to the fifo.
    output ft245_async_nwr,

    // ACBUS4 / SIWU#
    // this pin is used to wake up the FT232H or force it to send data to optimize some xfers.
    // We don't have the pins for it, so we just tie it to the FT232H's VCCIO.

    // ACBUS5
    // If we were to use synchronous mode, this would be a 60MHz clk from the FT232H to the FPGA.

    // ACBUS6
    // If we were using syncrhonous mode, this would signal to the FT232H that it can drive data
    // onto the bus

    // ACBUS7 / PWRSAV#
    // If brought low, this pin puts the system into a power saving mode.
    // we tie it to 5v through a resistor.
);
    logic sys_reset;

    assign sda_0_uart_tx = 1;

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
    // dummy data producer
    // produce data at 6MB/s
    logic [7:0] fifo_write_data;
    logic write_data_valid;
    logic [7:0] write_data_counter;

    always_ff @(posedge clk_pll) begin
        write_data_counter <= write_data_counter + 1;
        write_data_valid <= 0;
        if (write_data_counter == 8) begin
            fifo_write_data <= fifo_write_data + 1;
            write_data_valid <= 1;
            write_data_counter <= 0;
        end

        if (sys_reset) begin
            write_data_counter <= 0;
        end
    end

    ////////////////////////////////////////////////////////////////
    // ft232 output
    ft232h_async_driver dut (
        .clk_in(clk_pll), .reset_in(sys_reset),
        .fifo_data_in(fifo_write_data), .fifo_data_valid_in(write_data_valid),
        .ft245_async_d_inout(ft245_async_d),
        .ft245_async_nrxf_in(ft245_async_nrxf), .ft245_async_ntxe_in(ft245_async_ntxe),
        .ft245_async_nrd_out(ft245_async_nrd), .ft245_async_nwr_out(ft245_async_nwr)
    );
    defparam dut.TX_STATE_TICKS = 4;
endmodule
