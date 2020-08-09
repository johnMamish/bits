This quartus project plays a triangle wave on the audio chip of a DE2-115 board when an NES controller is connected.

The NES controller that I have is hooked up as follows
```
  * Red wire      -   +5V
  * White wire    -   GND
  * Yellow wire   -   Latch signal (output from FPGA)    (GPIO_0[33])
  * Blue wire     -   Clock        (ouptut from FPGA)    (GPIO_0[34])
  * Brown wire    -   Data out     (input to FPGA)       (GPIO_0[35])
```
