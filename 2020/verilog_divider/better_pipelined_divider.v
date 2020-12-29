// better_pipelined_divider.v
// Divides signed dividend by unsigned divisor.
// Parameterized to take in inputs of variable size.
// Combines remainder and quotient registers, shifting both at once. 

`timescale 1ns/100ps

//numerator = dividend, denominator = divisor
module pipelined_divider (input                             clock,

                          input                             input_valid,
                          input                       [5:0] input_tag,
                          input       [divisor_width - 1:0] divisor,
                          input      [dividend_width - 1:0] dividend,

                          output reg                        output_valid,
                          output reg                  [5:0] output_tag,
                          output reg [dividend_width - 1:0] quotient,
                          output reg [dividend_width - 1:0] remainder);
    
    parameter dividend_width = 12, divisor_width = 6;
    parameter stages = dividend_width; 
    parameter rem_width = dividend_width + divisor_width;
    parameter round = 1'b1; //if 1, round quotient to nearest integer. if 0, floor quotient.

    reg [divisor_width - 1:0] divisors   [0:stages];
    reg [rem_width - 1:0]     remainders [0:stages];

    reg neg_flags [0:stages]; //set if dividend is negative

    reg stage_valid [0:stages];
    reg [5:0] stage_tag [0:stages];

    always @(posedge clock) begin
        if (dividend[dividend_width - 1] == 1'b1) begin
            neg_flags[0] <= 1'b1;
            remainders[0] <= {{divisor_width{1'b0}}, -dividend}; //MSB of dividend is 0 bc positive, so divisor_width+1 0s
        end else begin
            neg_flags[0] <= 1'b0;
            remainders[0] <= {{divisor_width{1'b0}}, dividend};
        end
        divisors[0] <= divisor;

        stage_valid[0] <= input_valid;
        stage_tag[0] <= input_tag;
    end

    genvar i;
    generate
        for (i = 0; i < stages; i = i + 1) begin
            always @(posedge clock) begin
                //no underflow/positive
                if (remainders[i][rem_width - 1:dividend_width - 1] - {1'b0, divisors[i]} <= remainders[i][rem_width - 1:dividend_width - 1]) begin
                    remainders[i + 1] <= ({remainders[i][rem_width - 1:dividend_width - 1] - {1'b0, divisors[i]}, remainders[i][dividend_width - 2:0]} << 1) | 1;
                //underflow/negative
                end else begin
                    remainders[i + 1] <= remainders[i] << 1;
                end
                divisors[i + 1] <= divisors[i];
                neg_flags[i + 1] <= neg_flags[i];

                stage_valid[i + 1] <= stage_valid[i];
                stage_tag[i + 1] <= stage_tag[i];
            end
        end
    endgenerate

    always @(posedge clock) begin
        if (neg_flags[stages]) begin
            if (round && remainders[stages][rem_width - 1:dividend_width] >= divisors[stages] >> 1) begin
                quotient <= -remainders[stages][dividend_width - 1:0] - 'b1;
            end else begin
                quotient <= -remainders[stages][dividend_width - 1:0];
            end
            remainder <= -remainders[stages][rem_width - 1:dividend_width];
        end else begin
            if (round && remainders[stages][rem_width - 1:dividend_width] >= divisors[stages] >> 1) begin
                quotient <= remainders[stages][dividend_width - 1:0] + 'b1;
            end else begin
                quotient <= remainders[stages][dividend_width - 1:0];
            end
            remainder <= remainders[stages][rem_width - 1:dividend_width];
        end

        output_valid <= stage_valid[stages];
        output_tag <= stage_tag[stages];
    end 
endmodule

/*
module pipelined_divider_tb();
    reg clock;

    reg input_valid;
    reg [5:0] input_tag;
    reg [divisor_width_tb - 1:0] divisor;
    reg signed [dividend_width_tb - 1:0] dividend;

    wire output_valid;
    wire [5:0] output_tag;
    wire [dividend_width_tb - 1:0] quotient;
    wire [dividend_width_tb - 1:0] remainder;

    parameter dividend_width_tb = 6, divisor_width_tb = 3;

    defparam divider.dividend_width = dividend_width_tb;
    defparam divider.divisor_width = divisor_width_tb;

    pipelined_divider divider(.clock(clock),

                              .input_valid(input_valid),
                              .input_tag(input_tag),
                              .divisor(divisor),
                              .dividend(dividend),

                              .output_valid(output_valid),
                              .output_tag(output_tag),
                              .quotient(quotient),
                              .remainder(remainder));

    always begin
        clock = 1'b0;
        #500;
        clock = 1'b1;
        #500;
    end

    wire err;
    assign err = (groundtruth_mem[output_tag] !== quotient) && output_valid;

    // store groundtruth results
    reg signed [dividend_width_tb - 1:0] groundtruth_mem [0:(2**6) - 1];
    wire signed [divisor_width_tb:0] divisor_sgx = {1'b0, divisor};
    always @(posedge clock) begin
        if (input_valid) begin
            groundtruth_mem[input_tag] <= dividend / divisor_sgx;
        end

        if (output_valid) begin
            if (err) begin
                $display("error dividing at time %t. expected %d got %d",
                         $time, groundtruth_mem[output_tag], quotient);
            end else begin
                //$display("correct value at time %t. expected             %d got %d",
                //         $time, groundtruth_mem[output_tag], quotient);
            end
        end
    end

    integer i;
    integer uniform_seed;
    localparam ntests = 100000;//100000;
    initial begin
        $dumpfile("better_pipelined_divider.vcd");
        $dumpvars(0, pipelined_divider_tb);

        // zero out the divider's 'valid' tags.
        for (i = 0; i <= divider.stages; i = i + 1) begin
            divider.stage_valid[i] = 1'b0;
        end
        input_tag = 'h0;
        input_valid = 1'b0;

        @(posedge clock);
        @(posedge clock);
        for (i = 0; i < ntests; i = i + 1) begin
            @(posedge clock);

            input_tag = #1 input_tag + 'h1;
            input_valid = #1 1'b1;
            divisor = #1 $dist_uniform(uniform_seed, 1, (2**divisor_width_tb) - 1);
            dividend = #1 $urandom;
        end

        $finish;
    end
endmodule
*/







/*
module pipeline_divider_tb();

    reg clock;
    reg [divisor_width_tb - 1:0] divisor;
    reg [dividend_width_tb - 1:0] dividend;
    
    wire [dividend_width_tb - 1:0] quotient;
    wire [dividend_width_tb - 1:0] remainder;

    parameter dividend_width_tb = 8, divisor_width_tb = 4;

    defparam divider.dividend_width = dividend_width_tb;
    defparam divider.divisor_width = divisor_width_tb;

    pipeline_divider divider(.clock(clock),
                             .divisor(divisor),
                             .dividend(dividend),
                             .quotient(quotient),
                             .remainder(remainder));
   
    always begin
        clock = 1'b0;
        #500;
        clock = 1'b1;
        #500;
    end

    
    //integer i,j;
    //reg [31:0] rand;
    //reg [divisor_width_tb - 1:0] divisor_array [0:dividend_width_tb + 1];
    //reg [dividend_width_tb - 1:0] dividend_array [0:dividend_width_tb + 1];
    
    initial begin
        $dumpfile("pipeline_divider.vcd");
        $dumpvars(0, pipeline_divider_tb);
        
        //for (i = 0; i < 100; i++) begin
            //#500;
            //rand = $urandom;
            //divisor = rand[31:31 - divisor_width_tb + 1];
            //dividend = rand[dividend_width_tb - 1:0];
            



            //for (j = 0; j < dividend_width_tb + 1; j = j + 1) begin
                
            //end


            //#500;
        //end


                            //quotient, remainder
        #500;
        divisor = 4'b0010;
        dividend = 8'b11101111; //-8,-1     //-8,-2
        #1000;
        divisor = 4'b0001;
        dividend = 8'b11101111; //-17,0
        //#1000;
        //divisor = 4'b0001;
        //dividend = 8'b01010101; //
        #1000;
        divisor = 4'b0001;
        dividend = 8'b00001000; //8,0
        #1000;
        divisor = 4'b0001;
        dividend = 8'b00001111; //15,0
        #1000;
        divisor = 4'b0001;
        dividend = 8'b00000111; //7,0
        #1000;
        divisor = 4'b0010;
        dividend = 8'b00000010; //1,0
        #1000;
        divisor = 4'b0010;
        dividend = 8'b00000100; //2,0
        #1000;
        divisor = 4'b0010;
        dividend = 8'b00001111; //7,1
        #1000;
        divisor = 4'b0100;
        dividend = 8'b01010101; //21,1
        #1000;
        divisor = 4'b0011;
        dividend = 8'b01100011; //33,0
        #1000;
        divisor = 4'b0011;
        dividend = 8'b01100100; //33,1
        #500;

        #12000;
        
        $finish;
    end
endmodule 
*/
