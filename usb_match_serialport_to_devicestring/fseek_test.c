#include <dirent.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>

static int read_entire_file_to_str(FILE* f, char** c)
{
    //find length.  for some reason, fseek + ftell gives me a segfault?

    fseek(f, 0, SEEK_END);
    int l = ftell(f);
    rewind(f);
    *c = malloc(l + 1);
    if(fread(*c, l, 1, f) != 1)
        return -1;

    (*c)[l] = '\0';
    if((*c)[l - 1] == '\n')
        (*c)[l - 1] = '\0';
}

int main(int argc, char** argv)
{
    char* foo;
    FILE* fp = fopen("/sys/devices/pci0000:00/0000:00:14.0/usb1/1-2/serial", "rb");
    read_entire_file_to_str(fp, &foo);
    printf("foo = %s\r\n", foo);
    free(foo);
    fclose(fp);

    return 0;
}
