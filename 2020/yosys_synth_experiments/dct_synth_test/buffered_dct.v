`timescale 1ns/100ps

module buffered_dct(input                      nreset,
                    input                      clock,

                    input                      hm01b0_pixclk,
                    input [7:0]                hm01b0_pixdata,
                    input                      hm01b0_hsync,
                    input                      hm01b0_vsync,

                    output                     data_valid,
                    output     [(8 * 5) - 1:0]           data_out);


    ////////////////////////////////////////////////////////////////
    // ingester and ingester buffers
    wire [2:0] ingester_output_block_select;
    wire       ingester_frontbuffer_select;
    wire [8:0] ingester_output_write_addr;
    wire [7:0] ingester_output_pixval;
    wire       ingester_wren;

    reg [8:0] dct_buffer_fetch_addr [0:4];

    hm01b0_ingester ingester(.nreset(nreset),
                             .clock(clock),

                             .hm01b0_pixclk(hm01b0_pixclk),
                             .hm01b0_pixdata(hm01b0_pixdata),
                             .hm01b0_hsync(hm01b0_hsync),
                             .hm01b0_vsync(hm01b0_vsync),

                             .output_block_select(ingester_output_block_select),
                             .frontbuffer_select(ingester_frontbuffer_select),
                             .output_write_addr(ingester_output_write_addr),
                             .output_pixval(ingester_output_pixval),
                             .wren(ingester_wren));

    // 10x EBR
    genvar ingester_ebrs_gi;

    integer ingester_ebrs_gj;
    wire [7:0] ingester_block_dout [0:9];
    wire ingester_block_wren[0:9];
    generate
        for (ingester_ebrs_gi = 0; ingester_ebrs_gi < 10; ingester_ebrs_gi = ingester_ebrs_gi + 1) begin: ebrs
            if (ingester_ebrs_gi < 5) begin
                assign ingester_block_wren[ingester_ebrs_gi] =
                    ((ingester_output_block_select == (ingester_ebrs_gi % 5)) &&
                     (ingester_wren) &&
                     (ingester_frontbuffer_select == 1'h0));
            end else begin
                assign ingester_block_wren[ingester_ebrs_gi] =
                    ((ingester_output_block_select == (ingester_ebrs_gi % 5)) &&
                     (ingester_wren) &&
                     (ingester_frontbuffer_select == 1'h1));
            end
            ice40_ebr jpeg_buffer(.din(ingester_output_pixval),
                                  .write_en(ingester_block_wren[ingester_ebrs_gi]),
                                  .waddr(ingester_output_write_addr),
                                  .wclk(clock),
                                  .raddr(dct_buffer_fetch_addr[ingester_ebrs_gi % 5]),
                                  .rclk(clock),
                                  .dout(ingester_block_dout[ingester_ebrs_gi]));

            // zero buffer
`ifndef YOSYS
            initial begin
                for (ingester_ebrs_gj = 0; ingester_ebrs_gj < 512; ingester_ebrs_gj = ingester_ebrs_gj + 1) begin
                    jpeg_buffer.mem[ingester_ebrs_gj] = 'h0;
                end
            end
`endif
        end
    endgenerate

    ////////////////////////////////////////////////////////////////
    // DCT engines
    // Note that the 5 EBRs here make a special case where I can just have 1 DCT engine per EBR. In
    // other cases, I'd need a routing network between the EBRs and the DCT engines to correctly
    // distribute N EBRs worth of data over M DCT engines.
    reg [1:0] dcts_frontbuffer;
    reg       dct_nreset;
    wire [5:0] dct_fetch_addr [0:4];
    wire [4:0] dcts_finished;
    reg [2:0] mcu_groups_processed;

    reg [7:0] dct_output_read_addr;
    wire signed [15:0] dct_output_read_data [0:4];

    // 5 * (1 + 1) ebr (10x ebr)
    genvar dcts_i;
    generate
        for (dcts_i = 0; dcts_i < 5; dcts_i = dcts_i + 1) begin: dcts
            wire [5:0] dct_result_write_addr;
            wire       dct_result_wren;
            reg signed [7:0] src_data_in;
            always @* begin
                //if (((ingester_frontbuffer_select + 1'h1) == 1'h0)) begin
                    src_data_in = ingester_block_dout[dcts_i];
                //end else begin
                    //src_data_in = ingester_block_dout[dcts_i + 5];
                //end
                /*assign src_data_in =  ?
                                 ingester_block_dout[dcts_i] :
                                 ingester_block_dout[dcts_i + 5];*/
            end
            wire signed [15:0] dct_result_out;
            loeffler_dct_88 dct(.clock(clock),
                                .nreset(dct_nreset & nreset),

                                .fetch_addr(dct_fetch_addr[dcts_i]),
                                .src_data_in(src_data_in),

                                .result_write_addr(dct_result_write_addr),
                                .result_wren(dct_result_wren),
                                .result_out(dct_result_out),

                                .finished(dcts_finished[dcts_i]));

            wire [7:0] dct_buffered_write_addr;
            assign dct_buffered_write_addr = {dcts_frontbuffer, dct_result_write_addr};
            ice40_ebr #(.addr_width(8), .data_width(16)) dct_output_mem(.din(dct_result_out),
                                                                        .write_en(dct_result_wren),
                                                                        .waddr(dct_buffered_write_addr),
                                                                        .wclk(clock),
                                                                        .raddr(dct_output_read_addr),
                                                                        .rclk(clock),
                                                                        .dout(dct_output_read_data[dcts_i]));
        end

        for (dcts_i = 0; dcts_i < 5; dcts_i = dcts_i + 1) begin: dct_addrs
            always @* begin
                dct_buffer_fetch_addr[dcts_i] = { mcu_groups_processed, dct_fetch_addr[dcts_i] };
            end
        end
    endgenerate

    ////////////////////////////////////////////////////////////////
    // DCT engine reset logic
    // This logic should be in a seperate module. It watches the ingester unit and resets the
    // DCT engines when there is a new buffer that can be processed.
    //
    // When the backbuffer changes, this state machine holds the DCT engines in reset for 3 clock
    // cycles, then sets them loose with new base addresses and
`define DCTS_STATE_WAIT_FRAMEBUFFER 3'h0
`define DCTS_STATE_RESET 3'h1
`define DCTS_STATE_DCTS_ACTIVE 3'h2
`define DCTS_STATE_ERR 3'h3
    reg [2:0] DCTs_state;
    reg [1:0] reset_cnt;
    reg       ingester_frontbuffer [0:1];
    wire      buffer_swapped;
    assign buffer_swapped = (ingester_frontbuffer[0] != ingester_frontbuffer[1]);
    always @ (posedge clock) begin
        if (nreset) begin
            ingester_frontbuffer[0] <= ingester_frontbuffer_select;
            ingester_frontbuffer[1] <= ingester_frontbuffer[0];

            case (DCTs_state)
                `DCTS_STATE_WAIT_FRAMEBUFFER: begin
                    mcu_groups_processed <= 'h0;
                    reset_cnt <= 'h0;
                    dcts_frontbuffer <= dcts_frontbuffer;
                    if (buffer_swapped) begin
                        DCTs_state <= `DCTS_STATE_RESET;
                    end else begin
                        DCTs_state <= DCTs_state;
                    end
                end

                `DCTS_STATE_RESET: begin
                    mcu_groups_processed <= mcu_groups_processed;
                    dcts_frontbuffer <= dcts_frontbuffer;
                    if (buffer_swapped) begin
                        reset_cnt <= 'h0;
                        DCTs_state <= `DCTS_STATE_ERR;
                    end else if (reset_cnt < 'h2) begin
                        reset_cnt <= reset_cnt + 'h1;
                        DCTs_state <= `DCTS_STATE_RESET;
                    end else begin
                        reset_cnt <= 'h0;
                        DCTs_state <= `DCTS_STATE_DCTS_ACTIVE;
                    end
                end

                `DCTS_STATE_DCTS_ACTIVE: begin
                    reset_cnt <= 'h0;

                    if (buffer_swapped) begin
                        mcu_groups_processed <= mcu_groups_processed;
                        DCTs_state <= `DCTS_STATE_ERR;
                        dcts_frontbuffer <= dcts_frontbuffer;
                    end else if (&dcts_finished) begin
                        mcu_groups_processed <= mcu_groups_processed + 'h1;
                        if (mcu_groups_processed == 'h7) begin
                            DCTs_state <= `DCTS_STATE_WAIT_FRAMEBUFFER;
                            dcts_frontbuffer <= dcts_frontbuffer + 'h1;
                        end else begin
                            DCTs_state <= `DCTS_STATE_RESET;
                            dcts_frontbuffer <= dcts_frontbuffer + 'h1;
                        end
                    end else begin
                        mcu_groups_processed <= mcu_groups_processed;
                        DCTs_state <= `DCTS_STATE_DCTS_ACTIVE;
                        dcts_frontbuffer <= dcts_frontbuffer;
                    end
                end

                `DCTS_STATE_ERR: begin
                    mcu_groups_processed <= 'hx;
                    reset_cnt <= 'hx;
                    DCTs_state <= `DCTS_STATE_ERR;
                    dcts_frontbuffer <= 'hx;
                end
            endcase
        end else begin
            DCTs_state <= `DCTS_STATE_WAIT_FRAMEBUFFER;
            ingester_frontbuffer[0] <= 1'b0;
            ingester_frontbuffer[1] <= 1'b0;
            mcu_groups_processed <= 'h0;
            reset_cnt <= 'h0;
            dcts_frontbuffer <= 'h0;
        end
    end

    always @* begin
        case (DCTs_state)
            `DCTS_STATE_WAIT_FRAMEBUFFER: begin
                dct_nreset = 1'b0;
            end

            `DCTS_STATE_RESET: begin
                dct_nreset = 1'b0;
            end

            `DCTS_STATE_DCTS_ACTIVE: begin
                dct_nreset = 1'b1;
            end

            `DCTS_STATE_ERR: begin
                dct_nreset = 1'b1;
            end

            default: begin
                dct_nreset = 1'bx;
            end
        endcase // case (DCTs_state)
    end

    ////////////////////////////////////////////////////////////////
    // quantizer
    reg  signed [15:0] dividend;
    wire        [7:0] divisor;
    reg         [7:0] quotient_tag_in;
    reg               dividend_divisor_valid;

    reg [0:0] quantizer_state;
`define QUANTIZER_STATE_WAIT 1'h0
`define QUANTIZER_STATE_QUANTIZE 1'h1
    reg [1:0] quantizer_readbuf;
    reg [5:0] coefficient_index [0:1];
    reg [2:0] ebr_index [0:1];
    reg [1:0] quantizer_output_buffer [0:1];
    always @(posedge clock) begin
        if (nreset) begin
            ebr_index[1] <= ebr_index[0];
            coefficient_index[1] <= coefficient_index[0];
            quantizer_output_buffer[1] <= quantizer_output_buffer[0];
            case (quantizer_state)
                `QUANTIZER_STATE_WAIT: begin
                    quantizer_readbuf <= quantizer_readbuf;
                    coefficient_index[0] <= 'h0;
                    dividend_divisor_valid <= 1'h0;
                    ebr_index[0] <= 'h0;
                    if (quantizer_readbuf != dcts_frontbuffer) begin
                        quantizer_state <= `QUANTIZER_STATE_QUANTIZE;
                    end else begin
                        quantizer_state <= `QUANTIZER_STATE_WAIT;
                    end
                end

                `QUANTIZER_STATE_QUANTIZE: begin
                    coefficient_index[0] <= coefficient_index[0] + 6'h1;
                    dividend_divisor_valid <= 1'h1;

                    if (coefficient_index[0] == 'h3f) begin
                        quantizer_output_buffer[0] <= quantizer_output_buffer[0] + 'h1;

                        if (ebr_index[0] == 3'h4) begin
                            quantizer_state <= `QUANTIZER_STATE_WAIT;
                            quantizer_readbuf <= quantizer_readbuf + 'h1;
                            ebr_index[0] <= 'h0;
                        end else begin
                            quantizer_state <= `QUANTIZER_STATE_QUANTIZE;
                            quantizer_readbuf <= quantizer_readbuf;
                            ebr_index[0] <= ebr_index[0] + 'h1;
                        end
                    end else begin
                        quantizer_output_buffer[0] <= quantizer_output_buffer[0];
                        quantizer_state <= `QUANTIZER_STATE_QUANTIZE;
                        ebr_index[0] <= ebr_index[0];
                    end
                end
            endcase
        end else begin
            quantizer_state <= `QUANTIZER_STATE_WAIT;
            quantizer_readbuf <= 2'h0;
            quantizer_output_buffer[0] <= 2'h0;
            quantizer_output_buffer[1] <= 2'h0;
            coefficient_index[0] <= 'h0;
            coefficient_index[1] <= 'h0;
            ebr_index[0] <= 'h0;
            ebr_index[1] <= 'h0;
            dividend_divisor_valid <= 'h0;
        end
    end
