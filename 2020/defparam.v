module mymod(input a,
             output reg b);
    parameter  PARAM = 3;
    defparam PARAM = 4;
    generate
        if (1) begin
            //defparam PARAM = 4;
            always @* begin
                if (PARAM == 4) begin
                    b = a;
                end else if (PARAM == 3) begin
                    b = !a;
                end else begin
                    b = 0;
                end
            end
        end
    endgenerate
endmodule


module tb();
    reg a;
    wire b;

    mymod mm(.a(a), .b(b));

    initial begin
        a = 0;
        #100;
        a = 1;
        $display("%h", b);
        #100;
        a = 0;
        $display("%h", b);
        #100;

        $finish;
    end

endmodule
