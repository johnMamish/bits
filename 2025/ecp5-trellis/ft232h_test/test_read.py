#!/usr/bin/env python3

import ftd2xx as ft
from time import time
import sys
import numpy as np

# ensures that a list of strings is incrementing
def validate_data(data):
    bad = np.where((np.diff(data) != 1) & (np.diff(data) != -255))[0]
    if (len(bad) != 0):
        print(f"data failed check in {len(bad)} places")
        for idx in bad[0:100]:
            print(f"   {data[idx-1:idx+2]} @ index {idx}")
        return False
    else:
        return True

try:
    devlist = ft.listDevices()
    print(devlist)
    ftdev_id = devlist.index(b'fsplit00')
    print(f"ftdev id is {ftdev_id}")
except ValueError:
    raise Exception("No board found!")

print("opening device")
#ftdev = ft.openEx(b'fsplit00')
ftdev = ft.open(ftdev_id)
print("resetting device")
ftdev.resetDevice()

print("setting modes")
ftdev.setBitMode(0xff, 0x00)
ftdev.setTimeouts(10, 10)  # in ms
ftdev.setUSBParameters(64 * 1024, 64 * 1024)  # set rx, tx buffer size in bytes
ftdev.setFlowControl(ft.defines.FLOW_RTS_CTS, 0, 0)

# Receive data
chunks = []
start_time = time()
total_bytes = 50 * 1024 * 1024
while total_bytes > 0:
    print("reading... ", end='')
    chunk = ftdev.read(1 * 1024 * 1024)
    if not chunk:
        break
    chunks.append(chunk)
    print(f"read {len(chunk)} bytes.")
    total_bytes -= len(chunk)
exec_time = time() - start_time

# Print statistics
data = [b for chunk in chunks for b in chunk]  # flatten all chunks
data_len = len(data)
data_len_mb = data_len / (1024 * 1024)
print("Read %.02f MiB (%d bytes) from FPGA in %f seconds (%.02f MiB/s)" %
      (data_len_mb, data_len, exec_time, data_len_mb / exec_time))

print()
print("checking data integrity...")
if (not validate_data(data)):
    print("data failed check")
else:
    print("data passed check!!")

ftdev.close()
