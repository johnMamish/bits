/*  * pipeline_divider.v
    *
    * Divides signed dividend by unsigned divisor.
    * Parameterized to take inputs of variable size.
    *
    * Currently doing long division. Non restoring?
    *
    *
    *
    */

`timescale 1ns/100ps

//numerator = dividend, denominator = divisor
module pipeline_divider (input                             clock,
                         input      [divisor_width - 1:0]  divisor,
                         input      [dividend_width - 1:0] dividend,
                         output reg [dividend_width - 1:0] quotient,
                         output reg [dividend_width - 1:0] remainder);

    //num_width max = 1^, den_width max = 8, number of stages in pipeline
    parameter dividend_width = 16, divisor_width = 8, stages = dividend_width + 1;

    reg [dividend_width + divisor_width - 1:0] divisors   [0:stages];
    reg [dividend_width + divisor_width - 1:0] remainders [0:stages];
    reg [dividend_width - 1:0]                 quotients  [0:stages];

    reg neg_flag; //set if dividend is negative

    always @(posedge clock) begin
        if (dividend[dividend_width - 1] == 1'b1) begin
            neg_flag = 1'b1;
            remainders[0] <= {{divisor_width{1'b0}}, -dividend};
        end else begin
            neg_flag = 1'b0;
            remainders[0] <= {{divisor_width{1'b0}}, dividend};
        end
        divisors[0]   <= {divisor, {dividend_width{1'b0}}};
        quotients[0]  <= {dividend_width{1'b0}};
    end

    genvar i;
    generate
        for (i = 0; i < stages; i = i + 1) begin
            always @(posedge clock) begin
                if (remainders[i] - divisors[i] <= remainders[i]) begin //no underflow/positive
                    remainders[i + 1] <= remainders[i] - divisors[i];
                    quotients[i + 1] <= (quotients[i] << 1) | 1;
                end else begin //underflow/negative
                    remainders[i + 1] <= remainders[i];
                    quotients[i + 1] <= quotients[i] << 1;
                end
                divisors[i + 1] <= divisors[i] >> 1;
            end
        end
    endgenerate

    //integer j;
    always @(posedge clock) begin
        //for (j = 0; j <= stages; j = j + 1) begin
        //    $display("%b %b %b", divisors[j], quotients[j], remainders[j]);
        //end
        //$display(" ");

        if (neg_flag) begin
            quotient <= -quotients[stages];
            remainder <= -remainders[stages]; //different size but should be fine
        end else begin
            quotient <= quotients[stages];
            remainder <= remainders[stages];
        end
    end
endmodule

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

    /*
    integer i,j;
    reg [31:0] rand;
    reg [divisor_width_tb - 1:0] divisor_array [0:dividend_width_tb + 1];
    reg [dividend_width_tb - 1:0] dividend_array [0:dividend_width_tb + 1];
    initial begin
        $dumpfile("pipeline_divider.vcd");
        $dumpvars(0, pipeline_divider_tb);

        for (i = 0; i < 100; i++) begin
            #500;
            rand = $urandom;
            divisor = rand[31:31 - divisor_width_tb + 1];
            dividend = rand[dividend_width_tb - 1:0];




            for (j = 0; j < dividend_width_tb + 1; j = j + 1) begin

            end


            #500;
        end
*/




                            //quotient, remainder
        #500;
        divisor = 4'b0010;
        dividend = 8'b
        #1000;
        divisor = 4'b0001;
        dividend = 8'b11101111; //-17,0
        #1000;
        divisor = 4'b0010;
        dividend = 8'b00000111; //3,1
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
