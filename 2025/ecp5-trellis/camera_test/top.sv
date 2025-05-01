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
    ////////////////////////////////
    // Dev board connections
    // FTDI pins
    input ftdi_clk_12m,

    output logic sda_0_uart_tx,
    input scl_0_uart_rx,

    // LEDs and random GPIOs
    output logic [7:0] led,
    input btn,

    ////////////////////////////////
    // FT232H connections
    inout [7:0] ft245_async_d,
    input ft245_async_nrxf,
    input ft245_async_ntxe,
    output ft245_async_nrd,
    output ft245_async_nwr,

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

    // camera 1 timing
    input camera_1_int,
    output logic camera_1_mclk,
    output logic camera_1_trig,

    // camera 1 i2c
    inout camera_1_sda,
    inout camera_1_scl,

    // camera 1 config
    output logic camera_1_xshut,
    output logic camera_1_clksel,
    output logic camera_1_xsleep
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
        //led[6:0] = counter[20 +: 8];
        led[6:0] = '1;
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
            if (gi == 0) defparam i2c_txctl.INIT_FILE = "hm0360_initializer_program_0.hex";
            if (gi == 1) defparam i2c_txctl.INIT_FILE = "hm0360_initializer_program_1.hex";


            i2c_transmitter i2c_tx (
                .clock(ftdi_clk_12m), .reset(sys_reset),
                .reg_addr(i2c_init_addr), .reg_data(i2c_init_data), .data_valid(i2c_init_data_valid),
                .rw_bit(i2c_rw_bit), .phase_enable(i2c_tx_phases),
                .ready(i2c_transmitter_ready),
                .sda_io(cameras_sda[gi]), .scl_io(cameras_scl[gi]),
            );
            defparam i2c_tx.SCL_DIV = 50;

//`define NO_OUTPUT
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
            logic reader_sof = reader_pix_valid && (reader_row == 0) && (reader_col == 0);
            always_ff @(posedge cameras_pclk[gi]) begin
                if (reader_pix_valid) begin
                    if (reader_col == 0) counter <= '0;
                    else counter <= (counter == 'hff) ? counter : counter + 1;
                end
                if (gi == 0) begin
                    if (reader_sof) counter <= 0;
                end else begin
                    if (reader_sof) counter <= 8'h80;
                end
            end

            // hacky solution to hold async fifo write side in reset: the camera reader module
            // holds it in reset until a falling edge on vsync (end of first frame)

            ////////////////////////////////////////////////////////////////
            // fifo
            async_fifo #(
                .DSIZE(8),
                .ASIZE(16),
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
            async_fifo #(
                .DSIZE(1),
                .ASIZE(16),
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

    assign sda_0_uart_tx = '1;

    ////////////////////////////////////////////////////////////////
    // suck from fifo and output over parallel interface.
    logic [3:0] output_data;
    logic clk_out;

    localparam CLK_DIV = 8;
    logic do_fifo_read;
    logic output_valid;
    logic [2:0] clk_count;
    logic camera_idx;
    logic nibble_idx;

    logic fifos_definitely_not_empty = !(|fifos_almost_empty || |fifos_empty);

    logic [15:0] ft232_fifo_space_left;
    logic ft232_fifo_has_space;
    always_ff @(posedge clk_pll) ft232_fifo_has_space <= (ft232_fifo_space_left > 32);

    enum logic [2:0] {
        IDLE=0, IDLE_TO_BUSY=1, BUSY=2
    } fifo_read_state;
    always_ff @(posedge clk_pll) begin
        do_fifo_read <= '0;
        output_valid <= '0;

        case (fifo_read_state)
            IDLE: begin
                if (fifos_definitely_not_empty && ft232_fifo_has_space) begin
                    do_fifo_read <= '1;
                    camera_idx <= '0;
                    nibble_idx <= '0;
                    fifo_read_state <= IDLE_TO_BUSY;
                end
            end

            IDLE_TO_BUSY: begin
                // wait state to let the fifo's output update
                fifo_read_state <= BUSY;
            end

            BUSY: begin
                output_valid <= '1;

                // determine if we're going to read another output or go to the idle state.
                // we do this 2 cycles before falling edge phase so that the fifo's output
                // switches at the next falling edge
                if ((nibble_idx == 1) && (camera_idx == 1)) begin
                    if (fifos_definitely_not_empty && ft232_fifo_has_space) begin
                        // stay in the busy state and keep reading.
                        do_fifo_read <= '1;
                        fifo_read_state <= IDLE_TO_BUSY;
                    end else begin
                        fifo_read_state <= IDLE;
                    end
                end

                nibble_idx <= nibble_idx + 1;
                if (nibble_idx == 1) camera_idx <= camera_idx + 1;
            end
        endcase

        if (sys_reset) begin
            fifo_read_state <= IDLE;
        end
    end

    always_comb begin
        output_data = fifos_data[camera_idx][(4 * nibble_idx) +: 4];
    end

    assign clk_out = clk_count[2];
    assign do_fifos_read[0] = do_fifo_read;
    assign do_fifos_read[1] = do_fifo_read;

    logic [7:0] ft245_fifo_write_data;
    logic ft245_fifo_write_data_valid;
    always_comb begin
        ft245_fifo_write_data[0 +: 4] = output_data;
        ft245_fifo_write_data[4] = fifos_sof[camera_idx];
        ft245_fifo_write_data[5] = 0;
        ft245_fifo_write_data[6] = 0;
        ft245_fifo_write_data[7] = camera_idx;
        ft245_fifo_write_data_valid = output_valid;
    end

    ////////////////////////////////////////////////////////////////
    // ft232 output
    ft232h_async_driver dut (
        .clk_in(clk_pll), .reset_in(sys_reset),
        .fifo_data_in(ft245_fifo_write_data), .fifo_data_valid_in(ft245_fifo_write_data_valid),
        .remaining_space_out(ft232_fifo_space_left),
        .fifo_data_out(), .fifo_data_valid_out(),
        .ft245_async_d_inout(ft245_async_d),
        .ft245_async_nrxf_in(ft245_async_nrxf), .ft245_async_ntxe_in(ft245_async_ntxe),
        .ft245_async_nrd_out(ft245_async_nrd), .ft245_async_nwr_out(ft245_async_nwr)
    );
    defparam dut.TX_STATE_TICKS = 4;
endmodule
