/**
 * TODO: bidirectional.
 *
 * Thanks to esynr3z whose repo I referenced in writing this code.
 *     https://github.com/esynr3z/proto245/blob/master/src/proto245a.sv
 */

module ft232h_async_driver #(
    // How many clock cycles should we hold WR# low for?
    // WR should always be held low for at least 30ns.
    parameter TX_STATE_TICKS=4,
    parameter FIFO_DEPTH=2048
) (
    // clock used for writing to the internal fifo and timing output
    input clk_in,
    input reset_in,

    ////////////////////////////////////////////////////////////////
    // fifo interface
    input [7:0] fifo_data_in,
    input fifo_data_valid_in,

    ////////////////////////////////////////////////////////////////
    // ft232h interface
    inout [7:0] ft245_async_d_inout,

    // "When low, there is data available in the FIFO which can be read by driving RD# low"
    input ft245_async_nrxf_in,

    // "When low, data can be written into the FIFO by strobing WR# high, then low."
    input ft245_async_ntxe_in,

    // "Enables the current FIFO data byte to be driven onto D0...D7 when RD# goes low"
    output logic ft245_async_nrd_out,

    // "when WR# goes from high to low, D[7:0] on the bus wll be written to the fifo.
    output logic ft245_async_nwr_out
);
    ////////////////////////////////////////////////////////////////
    // Internal FIFO
    logic [7:0] tx_fifo_read_data;
    logic do_tx_fifo_read;
    logic tx_fifo_empty;
    logic tx_fifo_almost_empty;
    async_fifo #(
        .DSIZE(8),
        .ASIZE($clog2(FIFO_DEPTH)),
        .FALLTHROUGH("FALSE")
    ) camera_pixel_fifo (
        .wclk(clk_in), .wrst_n(!reset_in),
        .winc(fifo_data_valid_in), .wdata(fifo_data_in),
        .wfull(), .awfull(),

        .rclk(clk_in), .rrst_n(!reset_in),
        .rinc(do_tx_fifo_read), .rdata(tx_fifo_read_data),
        .rempty(tx_fifo_empty), .arempty(tx_fifo_almost_empty)
    );

    ////////////////////////////////////////////////////////////////
    // sample ft245 signals to avoid metastability
    logic nrxf_pipe [2];
    wire ft245_ready_for_rx = !nrxf_pipe[1];
    always_ff @(posedge clk_in) begin
        nrxf_pipe[0] <= ft245_async_nrxf_in;
        nrxf_pipe[1] <= nrxf_pipe[0];
    end

    logic ntxe_pipe [2];
    wire ft245_ready_for_tx = !ntxe_pipe[1];
    always_ff @(posedge clk_in) begin
        ntxe_pipe[0] <= ft245_async_ntxe_in;
        ntxe_pipe[1] <= ntxe_pipe[0];
    end

    ////////////////////////////////////////////////////////////////
    // state machine for pulling from fifo and sending to FT232H
    logic [7:0] ft245_tx_d;
    assign ft245_async_d_inout = ft245_async_nrd_out ? ft245_tx_d : 8'bz;

    // right now, we only output data, so we can ignore nrxf and tie nrd to 1
    assign ft245_async_nrd_out = '1;

    logic [7:0] xfer_count;

    enum logic [2:0] {
        STATE_IDLE,
        STATE_TX_START,
        STATE_TX,
        STATE_TX_END
    } state;

    logic ntxe_acked;

    always_ff @(posedge clk_in) begin
        case (state)
            STATE_IDLE: begin
                ft245_async_nwr_out <= 1'b1;
                ft245_tx_d <= 'x;
                do_tx_fifo_read <= '0;

                if (ft245_ready_for_tx && !tx_fifo_empty) begin
                    do_tx_fifo_read <= 1;
                    state <= STATE_TX_START;
                end
            end

            STATE_TX_START: begin
                do_tx_fifo_read <= '0;
                ntxe_acked <= '0;

                // We just read data from the fifo. Latch it and write it to the FT232H
                ft245_tx_d <= tx_fifo_read_data;
                state <= STATE_TX;
                xfer_count <= 0;
            end

            STATE_TX: begin
                // check to see if ntxe went high or not
                ntxe_acked <= ntxe_acked | ntxe_pipe[1];

                // hold WR# low for the prescribed number of cycles.
                ft245_async_nwr_out <= 1'b0;
                xfer_count <= xfer_count + 1;

                if (xfer_count == TX_STATE_TICKS) begin
                    xfer_count <= 0;
                    state <= STATE_TX_END;
                end
            end

            STATE_TX_END: begin
                // stop writing
                ft245_async_nwr_out <= 1'b1;

                // We wait until TXE# goes high again before going back to the idle state.
                // Or there might be a timeout if we missed the pulse where TXE# goes high
                ntxe_acked <= ntxe_acked | ntxe_pipe[1];
                xfer_count <= xfer_count + 1;

                if ((xfer_count >= 100) || (ntxe_acked)) begin
                    xfer_count <= 0;
                    state <= STATE_IDLE;
                end
            end
        endcase

        if (reset_in) begin
            state <= STATE_IDLE;
            ft245_async_nwr_out <= 1'b1;
            do_tx_fifo_read <= '0;
        end
    end
endmodule
