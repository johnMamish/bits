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
    parameter RX_STATE_TICKS=4,
    parameter FIFO_DEPTH=2048
) (
    // clock used for writing to the internal fifo and timing output
    input clk_in,
    input reset_in,

    ////////////////////////////////////////////////////////////////
    // fifo interface
    // input, data going from FPGA to ft232
    input [7:0] fifo_data_in,
    input fifo_data_valid_in,
    output logic [15:0] remaining_space_out,

    // output
    // This interface module assumes that the target fifo will always be ready to write to.
    output logic [7:0] fifo_data_out,
    output logic fifo_data_valid_out,

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
    // Internal FIFO for TX
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

    // async fifo is actually synchronous, so we can naively keep track of remaining space and
    // pass it up for backpressure
    logic [15:0] remaining_space;
    assign remaining_space_out = remaining_space;
    always_ff @(posedge clk_in) begin
        if (fifo_data_valid_in && !do_tx_fifo_read) remaining_space <= remaining_space - 1;
        if (!fifo_data_valid_in && do_tx_fifo_read) remaining_space <= remaining_space + 1;

        if (reset_in) begin
            remaining_space <= FIFO_DEPTH;
        end
    end

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

    logic [7:0] rxdata_pipe [2];
    logic [7:0] rxdata_latch;
    assign rxdata_latch = rxdata_pipe[1];
    always_ff @(posedge clk_in) begin
        rxdata_pipe[0] <= ft245_async_d_inout;
        rxdata_pipe[1] <= rxdata_pipe[0];
    end

    ////////////////////////////////////////////////////////////////
    // state machine for pulling from fifo and sending to FT232H
    logic [7:0] ft245_tx_d;
    assign ft245_async_d_inout = ft245_async_nrd_out ? ft245_tx_d : 8'bz;

    logic [7:0] xfer_count;

    enum logic [2:0] {
        STATE_IDLE,
        STATE_TX_START,
        STATE_TX,
        STATE_TX_END,
        STATE_RX,
        STATE_RX_END
    } state;

    logic ntxe_acked, nrxf_acked;

    always_ff @(posedge clk_in) begin
        fifo_data_valid_out <= 0;

        case (state)
            STATE_IDLE: begin
                ft245_async_nwr_out <= 1'b1;
                ft245_tx_d <= 'x;
                do_tx_fifo_read <= '0;

                // RX gets priority.
                if (ft245_ready_for_rx) begin
                    // Whenever the FT245 has data to RX, trigger it to do so.
                    ft245_async_nrd_out <= '0;
                    state <= STATE_RX;
                    nrxf_acked <= 0;
                end else if (ft245_ready_for_tx && !tx_fifo_empty) begin
                    // Whenever we're ready to TX and the FT245 doesn't have data to send us, do so.
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

            STATE_RX: begin
                // Check to see if the RX was acked (shouldn't be but just in case)
                nrxf_acked <= nrxf_acked | nrxf_pipe[1];

                // hold RD# low for the prescribed number of cycles.
                ft245_async_nrd_out <= '0;
                xfer_count <= xfer_count + 1;

                if (xfer_count == RX_STATE_TICKS) begin
                    // Once RD# has been low for long enough, read the data and bring it high.
                    // NB: it's ok to read the pipelined data -
                    fifo_data_valid_out <= 1;
                    fifo_data_out <= rxdata_pipe[1];

                    xfer_count <= 0;
                    ft245_async_nrd_out <= '1;
                    state <= STATE_RX_END;
                end
            end

            STATE_RX_END: begin
                // stop reading
                ft245_async_nrd_out <= '1;

                // We wait until RXF# goes high again before going back to the idle state.
                // Or there might be a timeout if we missed the pulse where RXF# goes high
                nrxf_acked <= nrxf_acked | nrxf_pipe[1];
                xfer_count <= xfer_count + 1;

                if ((xfer_count >= 100) || nrxf_acked) begin
                    xfer_count <= 0;
                    state <= STATE_IDLE;
                end
            end
        endcase

        if (reset_in) begin
            state <= STATE_IDLE;
            ft245_async_nwr_out <= 1'b1;
            ft245_async_nrd_out <= 1'b1;
            do_tx_fifo_read <= '0;
        end
    end
endmodule
