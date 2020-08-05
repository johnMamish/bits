`timescale 1ns/100ps

module counter_with_reset_example_tb();
    reg clock;
    reg reset;
    wire [7:0] counter;

    counter my_counter(.clock(clock),
                       .reset(reset),
                       .counter(counter));

    // This type of "always" block is allowed in testbenches. It starts at the same time as our
    // "main" initial block and runs in parallel to it, looping forever to generate a clock signal.
    always begin
        // the two #500 statements means that we will have one clock cycle every 1000 time-steps.
        clock = 1'b0;
        #500;
        clock = 1'b1;
        #500;
    end

    initial begin
        $dumpfile("counter_with_reset_example.vcd");
        $dumpvars(0, counter_with_reset_example_tb);

        reset = 1'b1;
        #2000;
        reset = 1'b0;

        // Just let the counter sit for a bit; we want it to roll over at least once.
        #500000;

        // try hitting reset again.
        reset = 1'b1;
        #2000;
        reset = 1'b0;

        // Let it sit for a little longer.
        #1000000;

        $finish;
    end
endmodule
