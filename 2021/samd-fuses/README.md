When programming the adafruit metro board with a samd21g18a on it, I had some issues with the BOOTPROT fuses. This directory contains some [motorola ".mot" files](https://en.wikipedia.org/wiki/SREC_(file_format)) that can change the fuses in the user row.

[This blog post](https://roamingthings.de/posts/use-j-link-to-change-the-boot-loader-protection-of-a-sam-d21/) put me onto the use of the Motorola .mot files for this purpose. The files with the correct checksums are taken from there.

The motorola S-record checksums are easy to calculate. It's just the LSByte of the sum of all the bytes in the row (excluding the record type marker at the beginning).

use command `loadfile <filename>.mot` in the program `JLinkExe` to program the user row.