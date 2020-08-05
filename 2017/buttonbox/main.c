#include <stdlib.h>
#include "serial_util.h"
#include <stdio.h>


//ff000000       = "autonomous
//00ff0000       = "rosbag
//0000ff00       = "parallel
//000000ff       = "manual

void bad_getline(char** line, FILE* fp)
{
    *line = malloc(100);
    int i = 0;
    do
    {
        (*line)[i] = fgetc(fp);
        if((i > 0) && ((*line)[i - 1] == '\r') && ((*line)[i] == '\n'))
            return;
        i++;
    } while(1);
}

int main(int argc, char** argv)
{
    //choose serial for command line
    int serialfd = serial_open(argv[1], 115200, 1);
    if(serialfd < 0)
    {
        printf("Could not open %s\r\n"
               "do you have sufficient permissions?\r\n", argv[1]);
        return -1;
    }

    FILE* serial = fdopen(serialfd, "w+");
    if(serial == NULL)
    {
        printf("Could not open serial file descriptor\r\n");
        return -1;
    }

    int recordstate = 0;
    int state = 2;
    char* line = NULL;
    char* lineprev = malloc(4); for(int i = 0; i < 4; lineprev[i++] = '0');
    size_t len;
    ssize_t read;
    while(1)
    {
        //get buttons and detect edges
        bad_getline(&line, serial);
        line[6] = '\0';
        //printf("line = %s\r\n", line);

        if((line[3] == '0') && (lineprev[3] == '1'))
            recordstate = !recordstate;

        for(int i = 0; i < 3; i++)
            if((line[i] == '0') && (lineprev[i] == '1'))
                state = i;

        //update old buttons
        free(lineprev);
        lineprev = line;
        line = NULL;

        //flash leds
        char temp[12] = "00000000\r\n\0";
        if(recordstate)
            temp[2] = (temp[3] = 'f');

        int idx = ((const int[]){0, 2, 3})[state] * 2;
        temp[idx] = (temp[idx + 1] = 'f');
        printf("temp = %s, state = %i\r\n", temp, state);
        fwrite(temp, 1, 10, serial);
    }

    return 0;
}
