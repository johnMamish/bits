// results of experiment with iverilog:
//    It looks like iverilog just assumes that bits which aren't specified in the bin file just default to 0.

module tb();
    reg signed [28:0] memory [0:8];

    initial begin: main
        integer i;

        for (i = 0; i < 9; i = i + 1) begin
            memory[i] = 10;
        end

        $readmemb("test_mem.bin", memory, 0, 7);
        for (i = 0; i < 9;  i = i + 1) begin
            $display("%h", memory[i]);
        end
    end
endmodule
