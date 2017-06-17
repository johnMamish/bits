#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "echelon.h"
#include "matfun.h"

/**
 * Assumes that width is not less than height, also assumes that the matrix is
 * not singluar
 */
int to_echelon_form(matfun_t* mat)
{
    //keep track of whether or not a row has been swapped.
    int* swapped = malloc(sizeof(int) * mat->rows);

    //for each row, subtract from all the lower rows its values
    for(int i = 0; i < mat->rows; i++)
    {
        //process each row below the ith row
        memset(swapped, 0, sizeof(int) * mat->rows);

        for(int j = (i + 1); j < mat->rows; j++)
        {
            //if it was already swapped down there, don't do anything to it.
            if(swapped[j])
                continue;

            //calculate the value to multiply the first row by
            double a = mat->mat[(i * mat->cols) + i];
            double b = mat->mat[(j * mat->cols) + i];
            double co = (-1.0) * (b / a);

            //subtract and swap rows if necessary
            int k;
            int badzeros = 0;
            for(k = 0; k < (i + 1); k++)
                mat->mat[(j * mat->cols) + k] += (co * mat->mat[(i * mat->cols) + k]);
            for(k = k; k < mat->cols; k++)
            {
                mat->mat[(j * mat->cols) + k] += (co * mat->mat[(i * mat->cols) + k]);
                if(mat->mat[(j * mat->cols) + k] == 0)
                    badzeros = k + 1;
            }

            //if there were zeros in a "bad place", swap that row with a lower one that is acceptable.
            if(badzeros)
            {
                while(swapped[badzeros] && (badzeros < (mat->rows - 1)))
                    badzeros++;
                if(badzeros == (mat->rows))
                    return -1;   //can't be swapped.
                printf("swapping %i and %i\r\n", j, badzeros);

                for(int l = 0; l < mat->cols; l++)
                {
                    double temp = mat->mat[(j * mat->cols) + l];
                    mat->mat[(j * mat->cols) + l] = mat->mat[(badzeros * mat->cols) + l];
                    mat->mat[(badzeros * mat->cols) + l] = temp;
                }

                swapped[badzeros] = 1;
                j--;  //do not pass go, do not collect $200.
            }
        }
    }

    return 0;
}

void echelon_process_string(void* v)
{
    char* str = (char*)v;

    matfun_t mf;
    str_to_matfun(&mf, str);
    printf("starting with matrix:\r\n");
    print_matfun(&mf);

    if(to_echelon_form(&mf) < 0)
        printf("failed\r\n");
    else
    {
        printf("\r\nresult:\r\n");
        print_matfun(&mf);
    }
}
