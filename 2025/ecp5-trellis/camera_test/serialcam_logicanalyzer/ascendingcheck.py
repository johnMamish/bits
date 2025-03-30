#!/usr/bin/env python3

import sys

if len(sys.argv) < 2:
    print(f"Usage: {sys.argv[0]} <filename>")
    sys.exit(1)

with open(sys.argv[1], "rb") as f:
    data = f.read()

for i in range(len(data) - 1):
    # For plain ascending (no wrap), just check data[i+1] == data[i] + 1
    if data[i+1] != (data[i] + 1) % 256:  # <-- if you *do* want wrap-around
        print(
            f"Error: Byte at offset {i+1} (0x{data[i+1]:02x}) "
            f"is not one more than byte at offset {i} (0x{data[i]:02x})."
        )
        sys.exit(1)

print("OK: All bytes ascend by +1.")
