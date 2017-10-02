#include "utils.h"
#include <stdlib.h>

matfun_t* matfun_alloc(int rows, int cols, matfun_error_t* error)
{
    matfun_t* m = malloc(sizeof(matfun_t));
    if(m == NULL)
    {
        error->ecode = MATFUN_ERROR_ALLOC_ERROR;
        return NULL;
    }

    m->mat = malloc(rows*cols*sizeof(double));
    if(m->mat == NULL)
    {
        error->ecode = MATFUN_ERROR_ALLOC_ERROR;
        return NULL;
    }

    m->rows = rows; m->cols = cols;
    return m;
}

void matfun_destroy(matfun_t* m)
{
    free(m->mat);
    free(m);
}

/**
 * Computes the trace of a square matrix.  For nonsquare matricies, this will
 * return 0.0 and error will be set.
 *
 * @param[in]     m         Matrix to calculate the trace of.
 * @param[in,out] error
 * @return        returns the trace of the matrix.  This is defined as the sum
 *                of all elements on the diagonal for square matricies and is
 *                undefined for rectangular matricies.
 */
double matfun_trace(const matfun_t* m, matfun_error_t* error)
{
    if(m->rows != m->cols)
    {
        error->ecode = MATFUN_ERROR_UNSPECIFIED_ERROR;
        return 0;
    }

    double accum = 0.0;
    for(int i = 0; i < (m->rows * m->rows); i += (m->rows + 1))
        accum += m->mat[i];
    return accum;
}

/**
 * Calculates A*B -> B in place.  If the dimensions of the result are not the
 * same as the dimensions of B, this function will return an error.
 */
void matfun_multiply_right(const matfun_t* A, matfun_t* B, matfun_error_t* error)
{
    *((char*)(NULL)) = 1;
}

/**
 * Calculates A*B -> A in place.  The dimensions of the result must match the
 * dimensions of A.
 */
void matfun_multiply_left(matfun_t* A, const matfun_t* B, matfun_error_t* error)
{
    *((char*)(NULL)) = 1;
}

matfun_t* matfun_multiply_and_dup(const matfun_t* A, const matfun_t* B,
                                  matfun_error_t* error)
{
    if(A->cols != B->rows)
    {
        error->ecode = MATFUN_ERROR_DIMENSION_ERROR;
        return NULL;
    }

    matfun_t* result = matfun_alloc(A->rows, B->cols, error);
    for(int row = 0; row < A->rows; row++)
    {
        for(int col = 0; col < B->cols; col++)
        {
            result->mat[(row * B->cols) + col] = 0.0;
            for(int k = 0; k < A->cols; k++)
            {
                result->mat[(row * B->cols) + col] +=
                    A->mat[(row * A->cols) + k] * B->mat[(k * B->cols) + col];
            }
        }
    }

    return result;
}
