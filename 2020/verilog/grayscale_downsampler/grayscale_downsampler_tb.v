`timescale 1ns/100ps

module grayscale_downsampler_tb();
    reg clock;
    reg reset;

    localparam real sys_clock_freq = 100000000;

    always begin
        clock = 1'b0;
        #((1E9 / sys_clock_freq) / 2);
        clock = 1'b1;
        #((1E9 / sys_clock_freq) / 2);
    end

    localparam bin_width = 6;
    localparam bin_height = 12;
    localparam num_bins_x = (((image_width + bin_width - 1) / bin_width) - 1);
    localparam num_bins_y = (((image_height + bin_height - 1) / bin_height) - 1);
    localparam num_bins = num_bins_x * num_bins_y;
    localparam bin_size = bin_width * bin_height;

    localparam image_width = 320;
    localparam image_height = 240;

    reg data_in_valid;
    reg [7:0] data_in;
    wire data_out_valid;
    wire [7:0] data_out;
    grayscale_downsampler ds(.clock(clock),
                             .reset(reset),

                             .data_in_valid(data_in_valid),
                             .data_in(data_in),

                             .data_out_valid(data_out_valid),
                             .data_out(data_out));
    defparam ds.data_width = 8;
    defparam ds.bin_width = bin_width;
    defparam ds.bin_height = bin_height;

    reg [7:0] image [0:((image_width * image_height) - 1)];
    reg [$clog2(bin_size) + 7:0] ground_truth [0:(num_bins - 1)];
    reg [7:0] result [0:(num_bins - 1)];

    localparam ntest = 2;
    integer uniform_seed0, uniform_seed1;
    integer normal_seed;
    initial begin: main
        integer i, j, x, y, image_input_ptr, image_output_ptr;

        uniform_seed0 = 0; uniform_seed1 = 0;
        normal_seed = 0;

        $dumpfile("grayscale_downsampler_tb.vcd");
        $dumpvars(0, grayscale_downsampler_tb);

        $dumpvars(1, ds.intra_bin_xidx[0]);
        $dumpvars(1, ds.intra_bin_yidx[0]);
        $dumpvars(1, ds.inter_bin_xidx[0]);
        $dumpvars(1, ds.inter_bin_yidx[0]);
        $dumpvars(1, ds.data_valid[0]);         $dumpvars(1, ds.data_valid[1]);
        $dumpvars(1, ds.x_at_final_pixel_in_bin[0]);
        $dumpvars(1, ds.y_at_final_pixel_in_bin[0]);

        reset <= 1'b1;
        @(posedge clock);
        @(posedge clock);
        reset <= #1 1'b0;

        for (i = 0; i < ntest; i = i + 1) begin: test_loop
            integer rand_offset;

            // generate a test image and ground truth
            for (j = 0; j < num_bins; j = j + 1) begin
                ground_truth[j] = 'h0;
            end
            for (y = 0; y < image_height; y = y + 1) begin: setup_loop_1
                for (x = 0; x < image_width; x = x + 1) begin: setup_loop_2
                    integer image_idx, bin_idx, rand_pixel;

                    if (((x % (num_bins_x / 2)) == 0) && ((y % (num_bins_y / 2)) == 0)) begin
                        rand_offset = $dist_uniform(uniform_seed0, 64, 192);
                    end

                    rand_pixel = rand_offset + $dist_normal(normal_seed, 0, 8);
                    image_idx = ((y * image_width) + x);
                    bin_idx = (((y / num_bins_y) * num_bins_x) + (x / num_bins_x));

                    image[image_idx] = rand_pixel;
                    ground_truth[bin_idx] = ground_truth[bin_idx] + rand_pixel;
                end
            end

            // feed image through grayscale downsampler
            image_input_ptr = 0;
            image_output_ptr = 0;
            while (image_input_ptr < (image_height * image_width)) begin
                if ($dist_uniform(uniform_seed1, 0, 2) == 0) begin
                    data_in <= #1 image[image_input_ptr];
                    data_in_valid <= #1 1'b1;
                    image_input_ptr <= #1 (image_input_ptr + 1);
                end else begin
                    data_in <= #1 8'hxx;
                    data_in_valid <= #1 1'b0;
                end

                if (data_out_valid) begin
                    result[image_output_ptr] = data_out;
                    image_output_ptr = image_output_ptr + 1;
                end

                @(posedge clock);
            end

            // check result
            $display("Image output ptr = %d. Num bins = %d", image_output_ptr, num_bins);
            for (j = 0; j < num_bins; j = j + 1) begin
                if (result[j] !== ground_truth[j]) begin
                    $display("Error at index %d in test number %d.", j, i);
                end
            end

            // put some space between the 2
            data_in_valid = #1 1'b0;
            for (j = 0; j < 10000; j = j + 1) @(posedge clock);
        end

        $finish;
    end
endmodule
