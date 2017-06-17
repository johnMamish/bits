/**
 * Includes basic type definitions
 *
 * "matfun" = "Matrix Fun"
 *
 * "Fun" is just fun, not short for "function"
 */

#ifndef _MATFUN_H
#define _MATFUN_H

typedef struct matfun
{
    double* mat;
    int cap, rows, cols;
} matfun_t;


int str_to_matfun(matfun_t*, const char*);
void print_matfun(matfun_t*);

#endif
