#!/bin/python3.11
import serial
import numpy as np
import matplotlib.pyplot as plt

def read_from_serial(port, baud_rate, chunk_size):
    with serial.Serial(port, baud_rate, timeout=1) as ser:
        # Read a chunk of `chunk_size` bytes
        data = ser.read(chunk_size)
        return data

def display_image(data):
    # Convert byte data to a numpy array of type uint8
    image_array = np.frombuffer(data, dtype=np.uint8).reshape((100, 100))
    # Display the image
    plt.imshow(image_array, cmap='gray')
    plt.show()

if __name__ == '__main__':
    port = "/dev/ttyUSB1"
    baud_rate = 4000000
    chunk_size = 10000  # Read 10,000 bytes

    while True:
        data = read_from_serial(port, baud_rate, chunk_size)
        if len(data) == chunk_size:
            display_image(data)
        else:
            print("Received incomplete data or timeout occurred.")
