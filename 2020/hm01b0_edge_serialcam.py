#!/usr/bin/env python3

import pygame
import numpy as np
import serial
import io
from PIL import Image

width = 320 / 2
height = 240 / 2

screen = pygame.display.set_mode((width, height))
pygame.display.flip()

# ser = serial.Serial('/dev/ttyUSB0', 460800 * 2, timeout=0, parity=serial.PARITY_EVEN)
ser = serial.Serial('/dev/ttyUSB0', 460800, timeout=0, parity=serial.PARITY_EVEN)
running = True
image = [None] * (width * height)
imagestr = b""

while running:
    # Read serial data

    while ser.in_waiting:  # Or: while ser.inWaiting():
        foo = ser.readline()
        #print(foo)
        imagestr += foo

    # 0xff00ff00 is a sequence that would almost certainly never appear in a real image.
    if (imagestr[-4:] == b"\xf0\x0f\xba\x11"):
        # data just before "magic end sequence" is debug messages.
        try:
            arr = imagestr[:-4]
            image = Image.open(io.BytesIO(imagestr[:-4]))
            print(str(len(imagestr[:-4])) + " bytes")
            #print(' '.join('{:02x}'.format(x) for x in imagestr[0:
            o = np.array(image.getdata(), dtype=('<u1', 3)).tobytes()
            image = pygame.image.frombuffer(o, (width, height), "RGB")
            screen.blit(image, (0, 0))
            pygame.display.update()
        except OSError as e:
            print(e)
            print(' '.join('{:02x}'.format(x) for x in imagestr[0:127]))0

        imagestr = b""

    # check if x was pressed to close window.
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False


pygame.quit()
