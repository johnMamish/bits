module blink(input    CLOCK_50,
				 output   [0:0] LEDR);
    reg [23:0] blinky;
	 assign LEDR[0] = blinky[22];
	 always @(posedge CLOCK_50) begin
	     blinky <= blinky + 24'h1;
	 end
				 
endmodule