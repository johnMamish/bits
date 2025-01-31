/**
 * This module reads data from an ISI interface and presents it on a generic camera data interface.
 *
 * Everything in this module is synchronous with pixclk. Downstream modules are responsible for
 * clock domain crossing.
 */

interface my_interface;
    logic x;

    modport controller (
        input x;
    );
    modport peripheral (
        output x;
    );
endinterface

module camera_reader #(

)  (
    input pixclk_i,
    input hsync_i,
    input vsync_i,
    input [7:0] pixdata_i,

    output logic [7:0] pixdata_o,
);
