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

    assign camera_0_xshut = 1'b1;
    assign camera_0_trig = 1'b0;

    assign camera_1_xshut = 1'b1;
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

    // Output 15MHz to camera mclk, select mclk for both cameras.
    // Combinational clock division bad practice, but ok for just outputting on clock pin only.
    logic [2:0] counter_60m;
    always_ff @(posedge clk_pll) begin
        counter_60m <= counter_60m + 1;
        if (sys_reset) counter_60m <= '0;
    end
    assign camera_0_clksel = 1'b1;
    always_comb camera_0_mclk = counter_60m[1];
    assign camera_1_clksel = 1'b1;
    always_comb camera_1_mclk = counter_60m[1];

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
    // parallel camera reader pipelines
    logic i2c_shutter_trig;
    wire [1:0] cameras_xsleep = {camera_0_xsleep, camera_1_xsleep};
    wire [1:0] i2c_inits_done;
    wire [1:0] cameras_sda = {camera_0_sda, camera_1_sda};
    wire [1:0] cameras_scl = {camera_0_scl, camera_1_scl};
    wire [1:0] cameras_pclk = {camera_0_pclk, camera_1_pclk};
    wire [1:0] [7:0] cameras_d = {camera_0_d, camera_1_d};
    wire [1:0] cameras_hsync = {camera_0_hsync, camera_1_hsync};
    wire [1:0] cameras_vsync = {camera_0_vsync, camera_1_vsync};

    wire [1:0] do_fifos_read;
    wire [1:0] fifos_almost_empty;
    wire [1:0] fifos_empty;
    wire [1:0] fifos_full;
    wire [1:0] [7:0] fifos_data;
    wire [1:0] fifos_sof;

    generate
        for (genvar gi = 0; gi < 2; gi++) begin: i2c_controller
            logic camera_vsync_i2c_domain;

            // wires between i2c controller and i2c transmitter
            logic [15:0] i2c_init_addr;
            logic [7:0] i2c_init_data;
            logic [1:0] i2c_tx_phases;
            logic i2c_rw_bit;
            logic i2c_init_data_valid;
            logic i2c_transmitter_ready;
            i2c_transmitter_controller i2c_txctl (
                .clock(ftdi_clk_12m), .reset(sys_reset),
                .reg_addr_o(i2c_init_addr), .reg_data_o(i2c_init_data), .data_valid_o(i2c_init_data_valid),
                .rw_bit_o(i2c_rw_bit), .i2c_tx_phases_o(i2c_tx_phases),
                .i2c_transmitter_ready,
                .trigger_i({i2c_transmitter_ready, camera_vsync_i2c_domain, i2c_shutter_trig}),
                .trigger_o({cameras_xsleep[gi], i2c_inits_done[gi]})
            );
            defparam i2c_txctl.INIT_FILE = "hm0360_initializer_program.hex";

            i2c_transmitter i2c_tx (
                .clock(ftdi_clk_12m), .reset(sys_reset),
                .reg_addr(i2c_init_addr), .reg_data(i2c_init_data), .data_valid(i2c_init_data_valid),
                .rw_bit(i2c_rw_bit), .phase_enable(i2c_tx_phases),
                .ready(i2c_transmitter_ready),
                .sda_io(cameras_sda[gi]), .scl_io(cameras_scl[gi]),
            );
            defparam i2c_tx.SCL_DIV = 50;

`define NO_OUTPUT
`ifndef NO_OUTPUT
            // synchronize vsync into i2c controller domain
            always_ff @(posedge ftdi_clk_12m) begin
                localparam NDELAY = 3;
                logic [NDELAY-1:0] camera_vsync_q;
                camera_vsync_q[0] <= cameras_vsync[gi];
                for (int i = 1; i < NDELAY; i++) camera_vsync_q[i] <= camera_vsync_q[i-1];
                camera_vsync_i2c_domain <= camera_vsync_q[NDELAY-1];
            end

            ////////////////////////////////////////////////////////////////
            // camera reader
            logic reader_pix_valid;
            logic [7:0] reader_pix_data;
            logic [15:0] reader_row;
            logic [15:0] reader_col;
            logic async_fifo_rst;
            camera_reader reader (
                .pixclk_i(cameras_pclk[gi]), .pixel_data_i(cameras_d[gi]),
                .hsync_i(cameras_hsync[gi]), .vsync_i(cameras_vsync[gi]),

                .pix_valid_o(reader_pix_valid), .pix_o(reader_pix_data),
                .row_o(reader_row), .col_o(reader_col),

                .async_fifo_rst_o(async_fifo_rst)
            );

            logic [7:0] counter;
            always_ff @(posedge cameras_pclk[gi]) begin
                if (reader_pix_valid) counter <= counter + 1;
            end

            // hacky solution to hold async fifo write side in reset: the camera reader module
            // holds it in reset until a falling edge on vsync (end of first frame)

            ////////////////////////////////////////////////////////////////
            // fifo
            async_fifo #(
                .DSIZE(8),
                .ASIZE(8),
                .FALLTHROUGH("FALSE")
            ) camera_pixel_fifo (
                .wclk(cameras_pclk[gi]), .wrst_n(!async_fifo_rst),
                .winc(reader_pix_valid), .wdata(reader_pix_data),
                .wfull(), .awfull(),

                .rclk(clk_pll), .rrst_n(!sys_reset),
                .rinc(do_fifos_read[gi]), .rdata(fifos_data[gi]),
                .rempty(fifos_empty[gi]), .arempty(fifos_almost_empty[gi])
            );

            // super lazy and expensive solution for getting an 'sof' bit
            logic reader_sof = reader_pix_valid && (reader_row == 0) && (reader_col == 0);
            async_fifo #(
                .DSIZE(1),
                .ASIZE(8),
                .FALLTHROUGH("FALSE")
            ) sof_fifo (
                .wclk(cameras_pclk[gi]), .wrst_n(!async_fifo_rst),
                .winc(reader_pix_valid), .wdata(reader_sof),
                .wfull(), .awfull(),

                .rclk(clk_pll), .rrst_n(!sys_reset),
                .rinc(do_fifos_read[gi]), .rdata(fifos_sof[gi]),
                .rempty(), .arempty()
            );
            `endif
        end
    endgenerate

    // i2c shutter trig
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

        if (sys_reset || !(|i2c_inits_done)) begin
            count <= 0;
        end
    end

`ifndef NO_OUTPUT
//`define OUTPUT_UART
`ifdef OUTPUT_UART
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
        .data_valid_i(do_fifos_read[jumper]), .data_i(fifos_data[jumper]),
        .uart_tx_o(sda_0_uart_tx), .uart_busy_o(uart_busy)
    );

endmodule
