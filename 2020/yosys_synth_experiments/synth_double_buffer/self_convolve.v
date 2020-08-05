/**
 * As a "Short, Self Contained, Correct (Compilable), Example" of the issue of my
 * "jpeg buffer EBRs" getting optimized out by yosys, this is a similar double-buffering example.
 */


/**
 * Buffers convolve_len bytes from data_in, then convolves them and outputs them.
 */
module self_convolve(input                 clock,
                     input                 nreset,

                     input                 data_in_valid,
                     input [7:0]           data_in,

                     output reg            data_out_valid,
                     output [15:0]         data_out);
    // for this SSCCE, convolve_len should be a multiple of 512 and should be greater than 512.
    parameter integer convolve_len = 1024;
    parameter integer ebrs_per_buf = convolve_len / 512;

    // manage pointers into buffer
    reg [8:0] write_addr;
    reg frontbuffer;
    reg [$clog2(ebrs_per_buf) - 1 : 0] block_select;
    always @(posedge clock) begin
        if (nreset) begin
            if (data_in_valid) begin
                write_addr <= write_addr + 'h1;

                if (block_select == (ebrs_per_buf - 1)) begin
                    block_select <= 'h0;
                    frontbuffer <= frontbuffer + 1'h1;
                end else begin
                    block_select <= block_select + 'h1;
                    frontbuffer <= frontbuffer;
                end
            end else begin
                write_addr <= write_addr;
                frontbuffer <= frontbuffer;
                block_select <= block_select;
            end
        end else begin
            write_addr <= 'h0;
            frontbuffer <= 1'b0;
            block_select <= 'h0;
        end
    end

    genvar gi;
    wire input_buf_wren [0 : (2 * ebrs_per_buf) - 1];
    generate
        for (gi = 0; gi < (2 * ebrs_per_buf); gi = gi + 1) begin
            if (gi < ebrs_per_buf) begin
                assign input_buf_wren[gi] = ((block_select == (gi % ebrs_per_buf)) &&
                                             data_in_valid &&
                                             (frontbuffer == 1'b0));
            end else begin
                assign input_buf_wren[gi] = ((block_select == (gi % ebrs_per_buf)) &&
                                             data_in_valid &&
                                             (frontbuffer == 1'b1));
            end

            ice40_ebr input_buffer(.din(data_in),
                                   .write_en(input_buf_wren[gi]),
                                   .waddr(write_addr),
                                   .wclk(clock),
                                   .raddr(),
                                   .rclk(clock),
                                   .dout());
        end
    endgenerate


endmodule
