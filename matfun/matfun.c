#include <stdio.h>
#include <stdlib.h>
#include "matfun.h"

static int is_part_of_num(char c)
{
    return (((c >= '0') && (c <= '9')) || (c == '.') || (c == '-'));
}

/**
 * assumes that "mat" is not initialized.
 */
int str_to_matfun(matfun_t* mat, const char* str)
{
    mat->cap = 32;
    mat->mat = malloc(mat->cap * sizeof(double));
    mat->cols = -1;
    mat->rows = 0;
    int colcount = 0;
    int dptr = 0;
    int idx = 0;
    int bracesdeep = 0;
    int numstart = 0;
    int num = 0;
    int prevnum = 0;

    while(str[idx])
    {
        num = 0;
        if(is_part_of_num(str[idx]))
        {
            num = 1;
            if(!prevnum && num)
                numstart = idx;
        }
        else
        {
            if(str[idx] == '[')
            {
                bracesdeep++;
                if(bracesdeep == 3)
                    return -1;
            }
            else if(str[idx] == ']')
            {
                bracesdeep--;
                if(bracesdeep == -1)
                    return -1;
            }

            //if we reached the end of a number on the last iteration, write it
            //into the array
            if((!num) && (prevnum))
            {
                colcount++;
                sscanf(&str[numstart], "%lf", &mat->mat[dptr++]);
                if(dptr == mat->cap)
                {
                    mat->cap *= 2;
                    realloc(mat->mat, mat->cap);
                }
            }

            //closing brace for single row
            if((str[idx] == ']') && (bracesdeep == 1))
            {
                mat->rows++;
                if(mat->cols == -1)
                    mat->cols = colcount;
                else
                {
                    if(mat->cols != colcount)
                        return -1;
                }
                colcount = 0;
            }
        }

        prevnum = num;
        idx++;
    }

    return 0;
}

void print_matfun(matfun_t* matfun)
{
    int ix = 0;
    printf("cols = %i, rows = %i\r\n", matfun->cols, matfun->rows);
    for(int i = 0; i < matfun->rows; i++)
    {
        printf("[");
        for(int j = 0; j < (matfun->cols - 1); j++, ix++)
            printf("%6.2lf ", matfun->mat[ix]);
        printf("%6.2lf", matfun->mat[ix++]);
        printf("]\r\n");
    }
}
