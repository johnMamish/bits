`ifndef _IMAGE_SENSOR_INTERFACE_SVH
    `define _IMAGE_SENSOR_INTERFACE_SVH

/**
 * Describes an interface that brings data in from an image sensor.
 */

interface image_sensor_interface #(
    parameter WIDTH = 8
)  (
    input pixclk
);
    // pixel data bus
    logic [(WIDTH-1):0] data;

    // hsync signal. This is valid during a line and demarcates the start and end of a line.
    // it may be high for a few pixels before valid data begins appearing.
    logic hsync;

    // vsync signal. This is valid during a frame and demarcates the start end end of a frame.
    logic vsync;

    modport reader (input pixclk, input data, input hsync, input vsync);
endinterface

`endif
