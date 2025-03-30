#!/usr/bin/env python3

import ftd2xx as ft
import time
import sys
import cv2
import numpy as np

from collections import deque

import os
import threading
import queue

import argparse

def printhex(arr):
    hex_vals = [f"{val:02x}" for val in arr]
    for i in range(0, len(hex_vals), 8):
        print(" ".join(hex_vals[i:i+8]))

class DataRateStats:
    def __init__(self, window_ms=1000):
        """
        :param window_ms: The time window (in milliseconds) over which to calculate the moving average.
        """
        self.window_ms = window_ms
        self.history = deque()
        self.total_bytes = 0

    def register_bytes_read(self, num_bytes):
        """
        Update internal stats with the number of bytes just read.
        """
        now = time.time() * 1000
        self.history.append((now, num_bytes))
        self.total_bytes += num_bytes

        # Remove samples older than the time window
        while self.history and self.history[0][0] < now - self.window_ms:
            self.history.popleft()

    def get_results(self):
        """
        Returns a tuple containing the average number of datas read in the last second
        and the total number of datas read overall.
        """
        # Sum bytes within the current window.
        bytes_in_window = sum(item[1] for item in self.history)

        # Determine the effective window time.
        if self.history:
            effective_window_ms = (time.time() * 1000) - self.history[0][0]
        else:
            effective_window_ms = self.window_ms

        # Avoid division by zero.
        if effective_window_ms > 0:
            data_rate = (bytes_in_window / (effective_window_ms / 1000.0))
        else:
            data_rate = 0.0

        return (data_rate, self.total_bytes)

# This thread reads from the ft232 and directly sends raw binary chunks to a thread that
# combines them into frames
# To keep things fast, this thread doesn't do any processing on the data at all.
def ft232h_read_thread(raw_binary_queue, sn_prefix=b'fsplit'):
    # Find the ftdi device to open
    try:
        devlist =  ft.listDevices()
        print(f"Read Thread: Found FT232H devices with the following serial numbers:")
        print(devlist)
        matching_sns = [sn for sn in devlist if (sn.startswith(sn_prefix))]
        if (len(matching_sns) == 0):
            print(f"Read Thread: Couldn't find an FT232H board with a serial number starting with {sn_prefix}")
            sys.exit(-1)
        else:
            ftdev_id = devlist.index(matching_sns[0])
            print(f"Read Thread: Choosing device number {ftdev_id} with serial number {matching_sns[0]}")
    except ValueError:
        raise Exception("Read Thread: No board found!")

    # open and configure the device
    print("Read Thread: Opening device")
    ftdev = ft.open(ftdev_id)
    print("Read Thread: resetting device")
    ftdev.resetDevice()
    print("Read Thread: setting modes")
    ftdev.setBitMode(0xff, 0x00)
    ftdev.setTimeouts(10, 10)  # in ms
    ftdev.setUSBParameters(64 * 1024, 64 * 1024)  # set rx, tx buffer size in bytes
    ftdev.setFlowControl(ft.defines.FLOW_RTS_CTS, 0, 0)

    # Read data
    stats = DataRateStats()
    last_printed_time = time.time()
    STATS_PRINT_RATE = 0.5
    while True:
        chunk = ftdev.read(1 * 1024 * 1024)
        raw_binary_queue.put(chunk)

        # update data reading stats
        stats.register_bytes_read(len(chunk))

        # print data rate if we havent printed in a little bit
        if ((time.time() - last_printed_time) > STATS_PRINT_RATE):
            data_rate, total_datas = stats.get_results()
            #print(f"Read Thread: reading from camera at {data_rate/1e6:6.2f}MB/s. {total_datas/1e6:8.2}MB so far")
            last_printed_time = time.time()


# This class recieves chunks of binary data containing camera data.
# When a complete image has been
# After every chunk is recieved, "check "
class CameraDataAccumulator:
    # This keeps track of produced (and horizontally concatenated) images
    pending_images: deque

    # This buffer holds already recieved bytes
    partial_image_chunks: []

    # This bit tells whether the currently accumulated partial image is valid or not.
    # If no SoF bit hasn't been seen yet, the pending data will be tossed.
    partial_image_valid: bool

    # Prescribed width and height
    width: int
    height: int

    def __init__(self, width=640, height=480):
        self.partial_image_valid = False
        self.partial_image_chunks = []
        self.pending_images = deque()
        self.width = width
        self.height = height

    def process_chunk(self, bin_chunk):
        chunk = np.frombuffer(bin_chunk, dtype=np.uint8)

        # Find an SoF bit in the chunk.
        sof_idx = self.detect_sof(chunk)
        if (sof_idx is not None):
            # This chunk had an SoF.
            # Split at the SoF bit, take the data before the SoF bit, append it to the pending
            # data, and convert to an image
            self.partial_image_chunks.append(chunk[:sof_idx])
            if (self.partial_image_valid):
                image_bindata = np.concatenate(self.partial_image_chunks)
                image = self.bindata_to_image(image_bindata)
                self.pending_images.append(image)

            # Discard the currently pending image that we just processed and start a new one
            self.partial_image_valid = True
            self.partial_image_chunks = [chunk[sof_idx:]]
        else:
            self.partial_image_chunks.append(chunk)

    def detect_sof(self, chunk):
        """ Given a binary chunk as an np array of uint8, gives the first index where there's an
            SoF bit. None if there's no SoF in the frame.
        """
        try:
            sof_idx = np.nonzero(chunk & (1 << 4))[0]
            return sof_idx[0]
        except Exception as e:
            return None

    def process_single_bindata_to_frame(self, data, flip_nibs=False):
        """
        Takes data from a single camera and turns it into a frame.
        If the data doesn't match the width and height of the prescribed framesize, will do its best
        to pad.
        Must be a single frame's worth of data.
        """
        # mask out upper bits of each chunk and combine lower and upper nibbles
        data = data & 0x0f

        # Trim or pad the array so it's the expected length
        printhex(data[0:64])
        target_length = self.width * self.height * 2
        current_length = len(data)
        if (current_length < target_length):
            data =  np.pad(data, (0, target_length - current_length), mode='constant', constant_values=0)
        else:
            data= data[:target_length]
        if (flip_nibs): data = np.array((data[1::2] << 0) | (data[0::2] << 4), dtype=np.uint8)
        else: data = np.array((data[1::2] << 4) | (data[0::2]), dtype=np.uint8)
        return data.reshape((self.height, self.width))

    def bindata_to_image(self, data):
        """
        Given binary data for a single frame (interleaved from both camera 0 and camera 1),
        returns a numpy image containing the image data.
        Image width and height are taken from the class.
        """
        # split into camera 0 and camera 1
        mask = ((data & 0x80) != 0)
        camera_0_data = data[mask]
        camera_1_data = data[~mask]

        # split into frames
        print("processing frames for camera 0")
        camera_0_frames = self.process_single_bindata_to_frame(camera_0_data)
        print("processing frames for camera 1")
        camera_1_frames = self.process_single_bindata_to_frame(camera_1_data, flip_nibs=True)
        print()
        return np.hstack((camera_0_frames, camera_1_frames))

    def get_image(self):
        """ Accessor for our deque of images. Returns None if there are no images left """
        try:
            return self.pending_images.popleft()
        except Exception as e:
            return None

def display_thread(queue, width=640, height=480, scale=2):
    accum = CameraDataAccumulator(width=width, height=height)
    tstart = time.time()
    accumulated_chunks = np.empty((0), dtype=np.uint8)

    stats = DataRateStats()
    do_write = True
    while True:
        chunk = queue.get()
        accum.process_chunk(chunk)

        accumulated_chunks = np.concatenate((accumulated_chunks, np.frombuffer(chunk, dtype=np.uint8)))
        if (len(accumulated_chunks) > 1000000 and do_write):
            do_write = False
            with open("foodump.bin", "wb") as f:
                f.write(accumulated_chunks)

        while True:
            image = accum.get_image()
            if (image is None):
                break

            # display image
            h = image.shape[1]
            w = image.shape[0]
            resized_image = cv2.resize(image, (h * scale, w * scale),
                                       interpolation=cv2.INTER_NEAREST)
            cv2.imshow('Serial Image', resized_image)
            cv2.waitKey(1)

            fps, total_frames = stats.get_results()
            stats.register_bytes_read(1)
            print(f"DisplayThread: reading at {fps:7.3}fps. Read {total_frames:7d} frames total.\r", end='')

if __name__ == '__main__':
    raw_binary_queue = queue.Queue()

    descstr = "Capture and stream video coming from our FPGA dev board over the high-speed FT232H connection."
    parser = argparse.ArgumentParser(description=descstr)
    parser.add_argument("--width", type=int, default=640)
    parser.add_argument("--height", type=int, default=480)
    parser.add_argument("--scale", type=int, default=2)
    parser.add_argument("--ftdi_sn_prefix", type=str, default="fsplit")
    args = parser.parse_args()

    ft232h_reader_thread = threading.Thread(target=ft232h_read_thread,
                                            args=(raw_binary_queue,),
                                            kwargs={"sn_prefix": args.ftdi_sn_prefix.encode('utf-8')})
    display_thread = threading.Thread(target=display_thread,
                                      args=(raw_binary_queue,),
                                      kwargs={"width": args.width, "height": args.height, "scale": args.scale})

    # Start both threads
    ft232h_reader_thread.start()
    display_thread.start()

    display_thread.join()
