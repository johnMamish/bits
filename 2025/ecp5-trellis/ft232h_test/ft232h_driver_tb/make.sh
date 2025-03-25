#!/bin/bash

rm driver_tb

iverilog -g2005-sv \
         ../async_fifo/rtl/async_fifo.v \
         ../async_fifo/rtl/fifomem.v \
         ../async_fifo/rtl/rptr_empty.v \
         ../async_fifo/rtl/sync_r2w.v \
         ../async_fifo/rtl/sync_w2r.v \
         ../async_fifo/rtl/wptr_full.v \
         ../ft232h_driver.sv \
         ft232_driver_tb.sv \
         -o driver_tb

./driver_tb
