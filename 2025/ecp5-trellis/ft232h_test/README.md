Getting the FT232H to work in async fifo mode was a bit of a pain, so I'm putting some notes here.

## FT232H eeprom config

For the FT232H to work in async fifo mode, its EEPROM needs to be configured correctly. The first time that I did this, I used the FT_PROG program on a lab windows computer, but now that I have that working EEPROM image, I dumped it and other FT232H's can be re-programmed with

Confusingly, the FT_PROG software lists a "245 fifo" and "cpu fifo" mode, but not an "asynchronous fifo" mode. You need to select "245 fifo" mode, and then when software opens the device at runtime, *software* can select sync or async mode.

## Using the correct driver on Linux

Even if you set the "don't use the serialio bit" in the eeprom, Linux will still try to use the serial io driver for the FT232H. I'm pretty sure (but not positive) that this won't

To use the ftd2xx drivers, you need to unbind the default serial drivers. There's a way to do this automatically with udev rules, but I haven't worked it out yet.

In the meantime, it can be done manually.

1. Figure out the usb path of the FT232H you want to unbind drivers from.

The usb path will look something like this.

```
2-7/2-7:1.0
```

where `2-7` is the usb port number and `:1.0` is the device config and descriptor that the driver is bound to.

This can be done by listing all of the devices that use the `ftdi_sio` driver:

```
$ ls -l /sys/bus/usb/drivers/ftdi_sio
2-1:1.1  2-7:1.0  bind  module  uevent  unbind
```

We can see that in this example, there are 2 devices using the `ftdi_sio` driver. Now, which one is ours? We can look at the PID and VID for each of these devices:

```
$ echo $(cat /sys/bus/usb/devices/2-1/idProduct) ":" $(cat /sys/bus/usb/devices/2-1/idVendor)
0403 : 6010

$ echo $(cat /sys/bus/usb/devices/2-7/idProduct) ":" $(cat /sys/bus/usb/devices/2-7/idVendor)
0403 : 6014
```

It looks like `2-7` is the device we want.

We can also do `lsusb -t`.

2. Unbind the driver.

Now we do the below as sudo

```
$ sudo su
# echo -n xxx > /sys/bus/usb/drivers/ftdi_sio/unbind
```

where `xxx` is replaced by `2-7:1.0`.

**Without this step**, trying to open the device with the ftd2xx drivers will give the following error:

```
    ftd2xx.ftd2xx.DeviceError: DEVICE_NOT_OPENED
```

## Other assorted notes

 * The FTD2xx drivers seem to get upset if I'm using Saleae Logic at the same time as I'm trying to use the FTDI.