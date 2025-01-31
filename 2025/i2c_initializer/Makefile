all: i2c_initializer_tb.vvp

i2c_initializer_tb.vvp: i2c_initializer_tb.sv ./i2c_initializer.sv
	iverilog -g2005-sv -I$(VERILOG) -Wall -o $@ $^
