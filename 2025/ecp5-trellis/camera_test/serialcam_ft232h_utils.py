import os
import numpy as np
import imageio.v2 as imageio


import ftd2xx as ft
import time
import sys
import numpy as np

from collections import deque

import os
import threading
import queue

import re

import argparse

def printhex(arr):
    hex_vals = [f"{val:02x}" for val in arr]
    for i in range(0, len(hex_vals), 8):
        print(" ".join(hex_vals[i:i+8]))

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
                image0, image1 = self.bindata_to_images(image_bindata)
                self.pending_images.append((image0, image1))

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
        #printhex(data[0:64])
        target_length = self.width * self.height * 2
        current_length = len(data)
        if (current_length < target_length):
            data =  np.pad(data, (0, target_length - current_length), mode='constant', constant_values=0)
        else:
            data = data[:target_length]
        if (flip_nibs): data = np.array((data[1::2] << 0) | (data[0::2] << 4), dtype=np.uint8)
        else: data = np.array((data[1::2] << 4) | (data[0::2]), dtype=np.uint8)
        return data.reshape((self.height, self.width))

    def bindata_to_images(self, data):
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
        camera_0_frames = self.process_single_bindata_to_frame(camera_0_data)
        camera_1_frames = self.process_single_bindata_to_frame(camera_1_data, flip_nibs=True)
        return camera_0_frames, camera_1_frames

    def get_image(self):
        """ Accessor for our deque of images. Returns None if there are no images left """
        try:
            return self.pending_images.popleft()
        except Exception as e:
            return None


class RecordingManager:
    def __init__(self):
        self.active = False
        self.remaining = 0
        self.req = None
        self.output_dir = ""
        self.counter = 0
        self.binary_file0 = None
        self.binary_file1 = None
        self.npy_list0 = []
        self.npy_list1 = []

    def start_recording_request(self, req):
        """
        Gets a new dict containing
            "frames":   number of frames to record in this burst
            "format":   which format to record to? supported right now are  binary, numpy, pbm, and png
            "filename": base filename to save to
            "seperate_cameras":   If true, 2 files will be generated, one for cam 0 and one for cam 1.
            "subdirectory": if true, files will be saved in a subdir
        """
        self.req = req
        self.remaining = req["frames"]
        self.active = True
        self.counter = 0

        # Seperate the subdirectory and filename
        self.output_dir = '/'.join(req["filename"].split('/')[:-1])
        self.base_filename = req["filename"].split('/')[-1]

        if (self.output_dir == ""): self.output_dir = "."

        # If we must store in a subdir and we don't have a subdir, swap names
        if (req["subdirectory"] and (self.output_dir == "")):
            self.output_dir = self.base_filename
            self.base_filename = time.strftime("capture-%Y-%m-%d_%H-%M-%S", time.localtime())

        # make subdir if doesn't exist
        os.makedirs(self.output_dir, exist_ok=True)

        # Check to see if our base filename is already there. If so, list all files that start with that name.
        name_conflicts = [f for f in os.listdir(self.output_dir) if
                          (os.path.isfile(os.path.join(self.output_dir, f)) and (f.startswith(self.base_filename)))]
        name_idxes = []
        for name in name_conflicts:
            name = re.sub(r"_cam(era|)[01]", "", name)
            name = '.'.join(name.split('.')[:-1])
            post = re.compile("[0-9]+$").search(name)
            if (post is not None): name_idxes.append(int(post.group(0)))

        try:
            self.base_filename = f"{self.base_filename}_{max(name_idxes)+1}"
        except ValueError as e:
            if (len(name_conflicts) > 0):
                self.base_filename = f"{self.base_filename}_0"

        print(f"basename = {self.base_filename} dirname = {self.output_dir}")

        fmt = req["format"]
        base = os.path.join(self.output_dir, self.base_filename)

        if fmt == "binary":
            if req["seperate_cameras"]:
                self.binary_file0 = open(base + "_cam0.bin", "ab")
                self.binary_file1 = open(base + "_cam1.bin", "ab")
            else:
                self.binary_file0 = open(base + ".bin", "ab")
                self.binary_file1 = None

        elif fmt == "numpy":
            self.npy_list0.clear()
            self.npy_list1.clear()

    def save_frames(self, frame):
        """
        Adds a new frame to the pending recording request.
        Ends the recording if appropriate.
        """
        if not self.active:
            return

        cam0, cam1 = frame
        fmt = self.req["format"]
        separate = self.req["seperate_cameras"]
        base = os.path.join(self.output_dir, self.base_filename)
        idx = self.counter

        if fmt == "binary":
            if separate:
                cam0.tofile(self.binary_file0)
                cam1.tofile(self.binary_file1)
            else:
                np.hstack((cam0, cam1)).tofile(self.binary_file0)

        elif fmt == "numpy":
            if separate:
                self.npy_list0.append(cam0)
                self.npy_list1.append(cam1)
            else:
                self.npy_list0.append(np.hstack((cam0, cam1)))

        elif fmt in ("pbm", "png"):
            ext = "." + fmt
            if separate:
                imageio.imwrite(f"{base}_camera0{ext}", cam0)
                imageio.imwrite(f"{base}_camera1{ext}", cam1)
            else:
                imageio.imwrite(f"{base}_{idx}{ext}", np.hstack((cam0, cam1)))

        self.counter += 1
        self.remaining -= 1

        if self.remaining <= 0:
            self._finalize()

    def _finalize(self):
        fmt = self.req["format"]
        base = os.path.join(self.output_dir, self.base_filename)

        if fmt == "binary":
            if self.binary_file0:
                self.binary_file0.close()
            if self.binary_file1:
                self.binary_file1.close()

        elif fmt == "numpy":
            if self.req["seperate_cameras"]:
                np.save(base + "_cam0.npy", np.stack(self.npy_list0))
                np.save(base + "_cam1.npy", np.stack(self.npy_list1))
            else:
                np.save(base + ".npy", np.stack(self.npy_list0))

        self.active = False

    def is_active(self):
        """ Returns true if a recording is currently going on, false otherwise """
        return self.active

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
