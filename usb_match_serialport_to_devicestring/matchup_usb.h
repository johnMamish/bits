#ifndef _MATCHUP_USB_H
#define _MATCHUP_USB_H

////////////////////////////////////////////////////////////////
//                         typedefs                           //
////////////////////////////////////////////////////////////////

/**
 * Describes the USB device that you want to seek out.  If you don't care about
 * vid and pid, set them to -1.  If you don't care
 * about the serial number, or either of the string descriptors, leave them as
 * NULL.  For instance, the following usb_qualifier
 *
 *     {0x8087, -1, "1234", NULL, NULL}
 *
 * Will find all usb device from intel corp. (0x8087 is intel's usb vendor id)
 * with a serial number of "1234".  Note that usb serial numbers are strings,
 * unlike the name suggests.
 */
typedef struct usb_qualifier
{
    int vid;
    int pid;
    char* serial_number;
    char* prod_descriptor;
    char* manu_descriptor;
} usb_qualifier_t;

int matchup_usb(usb_qualifier_t*, int, char**);

#endif
