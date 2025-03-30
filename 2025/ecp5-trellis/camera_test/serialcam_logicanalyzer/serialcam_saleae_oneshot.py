#!/bin/python3
import argparse
import cv2
import numpy as np
from saleae import automation
import sys
import tempfile
import os
import time
import subprocess
import imageio
import ffmpeg


SOF_CHANNEL = 6
READ_TIME_SEC = 0.05

def normalize_length(arr, target_length):
    current_length = len(arr)
    if current_length < target_length:
        # Pad the array with zeros at the end.
        # The pad_width specifies (before, after) padding for each axis.
        return np.pad(arr, (0, target_length - current_length), mode='constant', constant_values=0)
    else:
        # Trim the array if it's longer than target_length.
        return arr[:target_length]

# processes data from a single camera into an array of frames, splitting up at SoF bit rising edges
# and shifting nibbles around
def process_single_camera_data_to_frames(camera_data, width, height):
    # find places where sof is has a rising edge
    sof_bits = (camera_data & 0x40) != 0
    sof_rising_edge = np.diff(sof_bits.astype(np.int8))
    start_indicies = np.nonzero(sof_rising_edge == 1)[0] + 1

    # snip the array at those indicies
    print(start_indicies)
    chunks = [camera_data[start_indicies[i] : start_indicies[i+1]] for i in range(len(start_indicies) - 1)]

    try:
        chunks.append(camera_data[start_indicies[-1]:])
    except Exception as e:
        pass

    # mask out upper bits of each chunk and combine lower and upper nibbles
    numpy_images = []
    for frame in chunks:
        frame = frame & 0x0f
        frame = normalize_length(frame, width * height * 2)
        frame = np.array((frame[1::2] << 4) | (frame[0::2]), dtype=np.uint8)
        numpy_images.append(frame.reshape((height, width)))

    return numpy_images


if __name__ == '__main__':
    descstr = "Capture some video frames with saleae and convert them to an mp4"
    parser = argparse.ArgumentParser(description=descstr)
    parser.add_argument("--width", type=int, default=240)
    parser.add_argument("--height", type=int, default=240)
    parser.add_argument("--capture_len_sec", type=float, default=1.)
    parser.add_argument("--render_fps", type=int, default=10)
    parser.add_argument("--scale", type=int, default=2)
    parser.add_argument("--output_pictures", action="store_true")
    parser.add_argument("output_filename", type=str, default="out")
    args = parser.parse_args()

    OUTPUT_PIC_DIR = "output_pics"
    try: os.mkdir(OUTPUT_PIC_DIR)
    except Exception as e: pass

    with automation.Manager.connect(port=10430) as manager:
        # Setup a digital capture that records all channels at 25MHz
        dev_config = automation.LogicDeviceConfiguration(
            enabled_digital_channels=[0, 1, 2, 3, 4, 5, 6, 7],
            digital_sample_rate=25_000_000,
            digital_threshold_volts=1.2,
        )

        # Config to wait for 'start of frame' trigger and then read for selected time (~100millisec)
        cap_config = automation.CaptureConfiguration(
            capture_mode = automation.DigitalTriggerCaptureMode(
                trigger_type=automation.DigitalTriggerType.RISING,
                trigger_channel_index=SOF_CHANNEL,
                trim_data_seconds=0,
                after_trigger_seconds=args.capture_len_sec
            )
        )

        # Perform capture
        parallel_port_data = np.empty(100).astype(np.uint8)
        binfile = tempfile.NamedTemporaryFile()
        capture = manager.start_capture(device_configuration=dev_config, capture_configuration=cap_config)
        print("Capturing with Saleae...")
        capture.wait()

        print("Exporting from Saleae...")
        tempdir = tempfile.TemporaryDirectory()
        capture.export_raw_data_binary(tempdir.name, digital_channels=[0, 1, 2, 3, 4, 5, 6, 7])

        print("Converting Saleae data to binary")
        command = ["./saleae-binparser/saleae_parallel_port",
                   "--channel_list", "7", "6", "5", "4", "3", "2", "1", "0",
                   "--data_valid_channel", "5",
                   "--clock_channel", "4",
                   tempdir.name + "/digital",
                   binfile.name]
        subprocess.run(command)
        parallel_port_data = np.fromfile(binfile, dtype=np.uint8)

        # trim pre-sof data off
        startidx = -1
        idx = 0
        while ((startidx == -1) and (idx < len(parallel_port_data))):
            if ((parallel_port_data[idx] & (1 << 6)) != 0): startidx = idx
            idx += 1
        if (startidx == -1):
            print("couldn't find SoF bit")
            sys.exit(-1)
        parallel_port_data = parallel_port_data[startidx:]

        for i in range(100):
            print(f"{parallel_port_data[i]:02x} ", end='')
            if (i % 8 == 7): print("")

        # process data
        # split into camera 0 and camera 1
        mask = (parallel_port_data & 0x80) != 0
        camera_0_data = parallel_port_data[mask]
        camera_1_data = parallel_port_data[~mask]

        # split into frames
        camera_0_frames = process_single_camera_data_to_frames(camera_0_data, args.width, args.height)
        camera_1_frames = process_single_camera_data_to_frames(camera_1_data, args.width, args.height)

        # write to mp4
        frames_array = [camera_0_frames, camera_1_frames]
        for i in range(2):
            ffmpeg_dims = f"{args.width*args.scale}x{args.height*args.scale}"
            print(ffmpeg_dims)
            print("-----------------")
            process = (
                ffmpeg
                .input('pipe:', format='rawvideo', pix_fmt='gray', s=ffmpeg_dims, r=args.render_fps)
                .output(f'out{i}.mp4', vcodec='libx264', pix_fmt='yuv420p', crf=0, **{'b:v': '10000k'})
                .overwrite_output()
                .run_async(pipe_stdin=True)
            )
            for j, frame in enumerate(frames_array[i]):
                # pipe to ffmpeg
                print(frame.shape)
                frame_resized = frame.reshape((args.height, args.width)).repeat(args.scale, axis=0).repeat(args.scale, axis=1).astype(np.uint8)
                print(frame_resized.shape)
                process.stdin.write(frame_resized.tobytes())

                # also sanity check by sending to a png
                if (True or args.output_pictures):
                    picname = OUTPUT_PIC_DIR + f"/pic_{i}_{j}"
                    cv2.imwrite(f"{picname}.png", frame, [cv2.IMWRITE_PNG_COMPRESSION, 0])
                    with open(f"{picname}.bin", 'bw+') as f: f.write(frame.data)
            process.stdin.close()
            process.wait()

        """
        writer0 = imageio.get_writer(args.output_filename + "0.avi", fps=args.render_fps)
        writer1 = imageio.get_writer(args.output_filename + "1.avi", fps=args.render_fps)
        i = 0
        for img in camera_0_frames:
            with open(f"foo{i}.bin", "wb") as binary_file: binary_file.write(img.data)
            i += 1
            writer0.append_data(img)
        writer0.close()

        for img in camera_1_frames:
            writer1.append_data(img)
        writer1.close()
"""
