#!/bin/python3
import numpy as np
import cv2
import threading
import queue
from saleae import automation
import io
import tempfile
import os
import time
import subprocess

WIDTH=240
HEIGHT=240
SCALE=4

SOF_CHANNEL = 6
READ_TIME_SEC = 0.05

# This thread reads chunks of data from the saleae and sends the resulting data over the queue
# as bytearrays.
#
#
def saleae_reader_thread(queue):
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
                after_trigger_seconds=READ_TIME_SEC
            )
        )

        # create a fake directory for saleae to write to.
        while True:
            # read a new sample from the Saleae
            with manager.start_capture(device_configuration=dev_config, capture_configuration=cap_config) as capture:
                capture.wait()
                queue.put(capture)
                time.sleep(0.05)

# This thread gets
def display_thread(queue):
    while True:
        capture = queue.get()
        print("recieved some data: ")

        data = np.empty(100).astype(np.uint8)

        with tempfile.NamedTemporaryFile() as binfile:
            export_start = time.monotonic_ns()
            tempdir = tempfile.TemporaryDirectory()
            print("exporting")
            try:
                capture.export_raw_data_binary(tempdir.name, digital_channels=[0, 1, 2, 3, 4, 5, 6, 7])
            except Exception as e:
                pass

            try:
                capture.close()
                export_end = time.monotonic_ns()

                print("converting")
                # convert the data we got and put it in a bytearray
                command = ["./saleae-binparser/saleae_parallel_port",
                           "--channel_list", "6", "7", "3", "2", "1", "0",
                           "--data_valid_channel", "5",
                           "--clock_channel", "4",
                           tempdir.name + "/digital",
                           binfile.name]
                subprocess.run(command)

                data = np.fromfile(binfile, dtype=np.uint8)

                convert_end = time.monotonic_ns()

                print(f"exporting took {(export_end - export_start) / 1e3:9.2f}usec "
                      f"and converting took {(convert_end - export_end) / 1e3:9.2f}usec")

            except Exception as e:
                pass

        if (len(data) > 10):
            # Now, we have the data in a numpy file.
            for i in range(8):
                print(f"{data[i]:02x}")
            print()



def display_image(data):
    # Convert byte data to a numpy array of type uint8
    image_array = np.frombuffer(data, dtype=np.uint8).reshape((WIDTH, HEIGHT))
    # Display the image
    resized_image = cv2.resize(image_array, (HEIGHT * SCALE, WIDTH * SCALE),
                               interpolation=cv2.INTER_NEAREST)
    cv2.imshow('Serial Image', resized_image)
    cv2.waitKey(1)  # Waits for a key press for 1 ms, then continues

if __name__ == '__main__':
    q = queue.Queue()

    # Set up producer and consumer threads
    saleae_reader_thread = threading.Thread(target=saleae_reader_thread, args=(q,))
    display_thread = threading.Thread(target=display_thread, args=(q,))

    # Start both threads
    saleae_reader_thread.start()
    display_thread.start()

    display_thread.join()
