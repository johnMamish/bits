/**
 * This module reads data from an ISI interface and presents it on a generic camera data interface.
 *
 * Everything in this module is synchronous with pixclk. Downstream modules are responsible for
 * clock domain crossing.
 */

module camera_reader #(
    parameter PIX_WIDTH = 8,
    parameter HSYNC_PADDING = 10,
    parameter VSYNC_PADDING = 10,
    parameter ACTIVE_REGION_WIDTH = 240,
    parameter ACTIVE_REGION_HEIGHT = 240
)  (
    // Image sensor interface to read from.
    // This interface carries the clock that drives the logic inside this module
    input pixclk_i,
    input [7:0] pixel_data_i,
    input hsync_i,
    input vsync_i,

    // pixel data interface that data is output to
    output logic pix_valid_o,
    output logic [7:0] pix_o,
    output logic [15:0] row_o,
    output logic [15:0] col_o,

    output logic async_fifo_rst_o
);
    ////////////////////////////////////////////////////////////////
    // latch signals at input
    logic [7:0] pixel_data;
    logic hsync, vsync;
    initial begin hsync = 0; vsync = 0; end
    always_ff @(posedge pixclk_i) begin
        pixel_data <= pixel_data_i;
        hsync <= hsync_i;
        vsync <= vsync_i;
    end

    ////////////////////////////////////////////////////////////////
    // delayed versions of hsync and vsync for edge detection
    logic _hsync, _vsync;
    always_ff @(posedge pixclk_i) _hsync <= hsync;
    always_ff @(posedge pixclk_i) _vsync <= vsync;

    wire hsync_fell = (_hsync && !hsync);
    wire vsync_fell = (_vsync && !vsync);

    ////////////////////////////////////////////////////////////////
    // frame trimming logic
    // As we progress through reading the image, these variables track where the current pixel is
    // within the image.
    logic [15:0] col;
    logic [15:0] row;

    initial col = 16'h0000;
    initial row = 16'he000;
    initial async_fifo_rst_o = '1;

    // This signal is high whenever the current pixel readout pointer is in the valid window.
    logic pix_readout_in_valid_region;

    always_ff @(posedge pixclk_i) begin
        // pixel interface is invalid by default
        pix_valid_o <= 0;

        // On falling edge of hsync / vsync, we reset col / row count, respectively
        if (hsync_fell) col <= 0;
        if (vsync_fell) row <= 0;
        if (vsync_fell) async_fifo_rst_o <= 0;

        // On every cycle that hsync is high / every fall of hsync, we increment col / row
        if (hsync) col <= col + 1;
        if (hsync_fell) row <= row + 1;

        // On every cycle that hsync is high and we're in the valid region, we output a new pixel
        if (hsync && pix_readout_in_valid_region) begin
            pix_o <= pixel_data;
            pix_valid_o <= 1;
            row_o <= row - HSYNC_PADDING;
            col_o <= col - VSYNC_PADDING;
        end
    end



    // Arithmetically determined from config registers.
    localparam ACTIVE_REGION_MAX_X = HSYNC_PADDING + ACTIVE_REGION_WIDTH;
    localparam ACTIVE_REGION_MAX_Y = VSYNC_PADDING + ACTIVE_REGION_HEIGHT;

    always_comb begin
        pix_readout_in_valid_region = ((row >= VSYNC_PADDING) && (row < ACTIVE_REGION_MAX_Y) &&
                                       (col >= HSYNC_PADDING) && (col < ACTIVE_REGION_MAX_X));
    end
endmodule
