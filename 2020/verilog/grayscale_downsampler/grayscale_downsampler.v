/**
 * This verilog module downsamples a grayscale image
 *
 * It requires some internal memory
 *
 * NB: this would make a fun (?) exercise. So would a debayering filter.
 */

`timescale 1ns/100ps


module ebr(input                        wclk,
           input                        write_en,
           input [(addr_width - 1):0]   waddr,
           input [(data_width - 1):0]   wdata,

           input                        rclk,
           input [(addr_width - 1):0]   raddr,
           output reg [(data_width - 1):0]   rdata);
    parameter data_width = 8;
    parameter memory_words = 512;
    localparam addr_width = $clog2(memory_words);

    reg [(data_width - 1):0] mem [(memory_words - 1):0];

    always @(posedge wclk) // Write memory.
    begin
        if (write_en)
          mem[waddr] <= wdata; // Using write address bus.
    end

    always @(posedge rclk) // Read memory.
    begin
        // hacky RaW forwarding
        //rdata <= mem[raddr]; // Using read address bus.
        if (write_en && (waddr == raddr)) begin
            rdata <= wdata;
        end else begin
            rdata <= mem[raddr]; // Using read address bus.
        end
    end
endmodule


module grayscale_downsampler(input               clock,
                             input               reset,

                             input               data_in_valid,
                             input               vsync_in,
                             input [(data_width - 1) : 0]  data_in,

                             output reg          data_out_valid,
                             output reg          vsync_out,
                             output reg [(data_width - 1) : 0] data_out);
    parameter data_width = 8;
    parameter image_width = 320;
    parameter image_height = 240;
    parameter bin_width = 2;
    parameter bin_height = 2;

    localparam num_bins_x = ((image_width + (bin_width - 1)) / bin_width);
    localparam num_bins_y = ((image_height + (bin_height - 1)) / bin_height);

    localparam final_bin_width = ((image_width - 1) % bin_width) + 1;
    localparam final_bin_height = ((image_height - 1) % bin_height) + 1;

    localparam bin_size = (bin_width * bin_height);
    localparam bin_bitdepth = $clog2(bin_size) + data_width;

    reg [(data_width - 1):0] data_in_latch;

    reg [($clog2(bin_width) - 1):0] intra_bin_xidx [0:1], intra_bin_xidx_next;
    reg [($clog2(bin_height) - 1):0] intra_bin_yidx [0:1], intra_bin_yidx_next;
    reg [($clog2(num_bins_x) - 1):0] inter_bin_xidx [0:1], inter_bin_xidx_next;
    reg [($clog2(num_bins_y) - 1):0] inter_bin_yidx [0:1], inter_bin_yidx_next;

    reg x_at_final_pixel_in_bin [0:1];
    reg y_at_final_pixel_in_bin [0:1];

    reg buffer_write_en;
    reg [($clog2(num_bins_x) - 1):0] buffer_waddr;
    reg [(bin_bitdepth - 1):0] buffer_wdata;

    reg [($clog2(num_bins_x) - 1):0] buffer_raddr;
    wire [(bin_bitdepth - 1):0] buffer_rdata;

    ebr buffer(.wclk(clock), .write_en(buffer_write_en), .waddr(buffer_waddr), .wdata(buffer_wdata),
               .rclk(clock), .raddr(buffer_raddr), .rdata(buffer_rdata));
    defparam buffer.data_width = bin_bitdepth;
    defparam buffer.memory_words = num_bins_x;

    reg [(bin_bitdepth - 1):0] accum_result;

    reg data_valid [0:1];
    always @* begin
        vsync_out = vsync_in;

        x_at_final_pixel_in_bin[0] = (inter_bin_xidx[0] == (num_bins_x - 1)) ?
                                     (intra_bin_xidx[0] == (final_bin_width - 1)) :
                                     (intra_bin_xidx[0] == (bin_width - 1));
        y_at_final_pixel_in_bin[0] = (inter_bin_yidx[0] == (num_bins_y - 1)) ?
                                     (intra_bin_yidx[0] == (final_bin_height - 1)) :
                                     (intra_bin_yidx[0] == (bin_height - 1));

        data_valid[0] = data_in_valid;

        if (data_valid[0]) begin
            ////////////////////////////////
            // initial values
            intra_bin_xidx_next = 'hx;
            intra_bin_yidx_next = 'hx;
            inter_bin_xidx_next = 'hx;
            inter_bin_yidx_next = 'hx;

            buffer_raddr = 'hx;
            ////////////////////////////////

            // increment x
            intra_bin_xidx_next = x_at_final_pixel_in_bin[0] ? 'h0 : intra_bin_xidx[0] + 'h1;
            if (x_at_final_pixel_in_bin[0]) begin
                inter_bin_xidx_next = (inter_bin_xidx[0] == (num_bins_x - 1)) ? 'h0 : inter_bin_xidx[0] + 'h1;
            end else begin
                inter_bin_xidx_next = inter_bin_xidx[0];
            end

            // increment y
            if (x_at_final_pixel_in_bin[0] && (inter_bin_xidx[0] == (num_bins_x - 1))) begin
                intra_bin_yidx_next = y_at_final_pixel_in_bin[0] ? 'h0 : intra_bin_yidx[0] + 'h1;
                if (y_at_final_pixel_in_bin[0]) begin
                    inter_bin_yidx_next = (inter_bin_yidx[0] == (num_bins_y - 1)) ? 'h0 : inter_bin_yidx[0] + 'h1;
                end else begin
                    inter_bin_yidx_next = inter_bin_yidx[0];
                end
            end else begin
                intra_bin_yidx_next = intra_bin_yidx[0];
                inter_bin_yidx_next = inter_bin_yidx[0];
            end

            // We don't need to read if we are at the top-left pixel of an image.
            if ((intra_bin_xidx[0] == 0) && (intra_bin_yidx[0] == 0)) begin
                buffer_raddr = 'hx;
            end else begin
                buffer_raddr = inter_bin_xidx[0];
            end
        end else begin
            intra_bin_xidx_next = intra_bin_xidx[0];
            intra_bin_yidx_next = intra_bin_yidx[0];
            inter_bin_xidx_next = inter_bin_xidx[0];
            inter_bin_yidx_next = inter_bin_yidx[0];

            buffer_raddr = {($clog2(num_bins_x)){1'bx}};
        end

        if (data_valid[1]) begin
            accum_result = 'hx;

            buffer_write_en = 1'bx;
            buffer_waddr = 'hx;
            buffer_wdata = 'hx;

            data_out_valid = 1'bx;
            data_out = 'hxx;

            if ((intra_bin_xidx[1] == 0) && (intra_bin_yidx[1] == 0)) begin
                accum_result = data_in_latch;
            end else begin
                accum_result = data_in_latch + buffer_rdata;
            end

            if (x_at_final_pixel_in_bin[1] && y_at_final_pixel_in_bin[1]) begin
                buffer_write_en = 1'b0;
                buffer_waddr = 'hx;
                buffer_wdata = 'hx;

                data_out_valid = 1'b1;
                data_out = accum_result / bin_size;
            end else begin
                buffer_write_en = 1'b1;
                buffer_waddr = inter_bin_xidx[1];
                buffer_wdata = accum_result;

                data_out_valid = 1'b0;
                data_out = 'hxx;
            end
        end else begin
            accum_result = 'hx;

            buffer_write_en = 1'b0;
            buffer_waddr = 'hx;
            buffer_wdata = 'hx;

            data_out_valid = 1'b0;
            data_out = 'hxx;
        end
    end

    always @(posedge clock) begin
        if (!reset) begin
            data_in_latch <= data_in;
            intra_bin_xidx[0] <= intra_bin_xidx_next;
            intra_bin_xidx[1] <= intra_bin_xidx[0];
            intra_bin_yidx[0] <= intra_bin_yidx_next;
            intra_bin_yidx[1] <= intra_bin_yidx[0];
            inter_bin_xidx[0] <= inter_bin_xidx_next;
            inter_bin_xidx[1] <= inter_bin_xidx[0];
            inter_bin_yidx[0] <= inter_bin_yidx_next;
            inter_bin_yidx[1] <= inter_bin_yidx[0];
            data_valid[1] <= data_valid[0];

            x_at_final_pixel_in_bin[1] <= x_at_final_pixel_in_bin[0];
            y_at_final_pixel_in_bin[1] <= y_at_final_pixel_in_bin[0];
        end else begin
            data_in_latch <= data_in;
            intra_bin_xidx[0] <= 'h0; intra_bin_xidx[1] <= 'h0;
            intra_bin_yidx[0] <= 'h0; intra_bin_yidx[1] <= 'h0;
            inter_bin_xidx[0] <= 'h0; inter_bin_xidx[1] <= 'h0;
            inter_bin_yidx[0] <= 'h0; inter_bin_yidx[1] <= 'h0;
            data_valid[1] <= 'h0;

            x_at_final_pixel_in_bin[1] <= 1'bx;
            y_at_final_pixel_in_bin[1] <= 1'bx;
        end
    end

endmodule
