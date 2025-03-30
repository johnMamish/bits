#!/bin/bash

ffmpeg -y \
       -i out0.mp4 -i out1.mp4 \
       -filter_complex "hstack=2" output.mp4 -crf 0
