module i2c_peripheral_ebr_filler(// Make sure you run this signal to the i2c IP's input clock.
                                 input              clock,

                                 // This signal should be used to reset your state machine. Make
                                 // sure that it's also wired to the i2c IP's i_rst input so that
                                 // the i2c IP gets reset when your FSM does.
                                 input              reset,

                                 // These are the i2c interface
                                 //
                                 // Verilog doesn't work nicely all the time with bidirectional
                                 // ports, so we need seperate inputs and outputs for the
                                 // bidirectional sda and scl. The lattice provided testbench should
                                 // handle these - I'll take care of them in the actual device
                                 // synthesis.
                                 // Anyways, you'll probably just run them straight into the
                                 // instantiation of the hardened i2c IP.
                                 input              i_scl,
                                 input              i_sda,
                                 output             o_scl,
                                 output             o_sda,

                                 // These are the EBR interface. Note that the EBRs will be
                                 // instantiated external to this module; you don't instantiate
                                 // them inside here. When you have a full-scale testbench, you may
                                 // want to instantiate EBRs inside the testbench. HMU when you get
                                 // there and we'll talk about it if you're unsure of what that
                                 // should look like.
                                 //
                                 // select ebr #0 or ebr #1
                                 output reg         ebr_select,

                                 // Hold this to 1 if there's valid data on ebr_data_out. It will
                                 // get written to the ebr # determined by ebr_select.
                                 output reg         ebr_wren,

                                 // Data to write to the ebr.
                                 output reg   [7:0] ebr_data_out);

    i2cslave_controller i2cslave_controller_u1 (.i_sys_clk(clock),
                                                .i_rst(reset),
                                                .i_scl(i_scl),
                                                .o_scl(o_scl),
                                                .i_sda(i_sda),
                                                .o_sda(o_sda),

                                                //...
                                                );

);
endmodule
