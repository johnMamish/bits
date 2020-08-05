/**
 * Includes basic type definitions
 *
 * "matfun" = "Matrix Fun"
 *
 * "Fun" is just fun, not short for "function"
 */

#ifndef _MATFUN_H
#define _MATFUN_H

typedef enum matfun_error_e
{
    MATFUN_ERROR_NO_ERROR,
    MATFUN_ERROR_UNSPECIFIED_ERROR,
    MATFUN_ERROR_ALLOC_ERROR,
    MATFUN_ERROR_DIMENSION_ERROR
} matfun_error_e;

/**
 * Algorithms assume that matricies are in row-major order.  Accessing
 * mat[(i * cols) + j] will give you the element in the i-th row and the jth
 * column.
 */
typedef struct matfun
{
    double* mat;
    int cap, rows, cols;
} matfun_t;

typedef struct matfun_error
{
    matfun_error_e ecode;
} matfun_error_t;

int str_to_matfun(matfun_t*, const char*);
void print_matfun(matfun_t*);

#endif
