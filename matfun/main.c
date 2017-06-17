#include <stdio.h>
#include <string.h>
#include "echelon.h"
#include "matfun.h"

typedef struct arg_fp
{
    const char* arg;
    void (*fp)(void*);
} arg_fp_t;

arg_fp_t options[] =
{
    {"invert", NULL},
    {"eigen", NULL},
    {"echelon", echelon_process_string}
};

int main(int argc, char** argv)
{
    #if 1
    int match = 0;
    for(int i = 0; (i < (sizeof(options) / sizeof(options[0]))) && !match; i++)
    {
        if(!strcmp(options[i].arg, argv[1]))
        {
            options[i].fp(argv[2]);
            match = 1;
        }
    }

    if(!match)
    {
        printf("Usage:   %s <command> <vector>\r\n", argv[0]);
        printf("example: %s eigen [[1 2 3] [4 5 6] [7 8 9]]\r\n", argv[0]);
        printf("valid commands are\r\n");
        for(int i = 0; ((i < (sizeof(options) / sizeof(options[0])))); i++)
            printf("%s\r\n", options[i].arg);
    }
    #endif
    return 0;
}
