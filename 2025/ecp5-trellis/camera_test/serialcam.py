#!/bin/python3.10
import serial
import numpy as np
import cv2

WIDTH=320
HEIGHT=240

def read_from_serial(port, baud_rate, chunk_size):
    with serial.Serial(port, baud_rate, timeout=3) as ser:
        # Read a chunk of `chunk_size` bytes
        data = ser.read(chunk_size)
        return data

def display_image(data):
    # Convert byte data to a numpy array of type uint8
    image_array = np.frombuffer(data, dtype=np.uint8).reshape((WIDTH, HEIGHT))
    # Display the image
    resized_image = cv2.resize(image_array, (HEIGHT * 2, WIDTH * 2),
                               interpolation=cv2.INTER_NEAREST)
    cv2.imshow('Serial Image', resized_image)
    cv2.waitKey(1)  # Waits for a key press for 1 ms, then continues

if __name__ == '__main__':
    port = "/dev/ttyUSB1"
    baud_rate = 4000000
    chunk_size = WIDTH * HEIGHT  # Read 10,000 bytes

    try:
        while True:
            data = read_from_serial(port, baud_rate, chunk_size)
            if len(data) == chunk_size:
                display_image(data)
            else:
                print("Received incomplete data or timeout occurred.")
    except KeyboardInterrupt:
        print("Exiting...")
    finally:
        cv2.destroyAllWindows()
