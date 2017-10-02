#include "eigen.h"
#include "matfun.h"
#include "utils.h"
#include <stdlib.h>
#include <stdio.h>

/**
 * Finds the coefficients of the characteristic polynomial of a matrix A.
 * Formula taken from Louis L. Pennisi, Mathematics Magazine, Vol. 60,
 * No. 1 (Feb., 1987), pp. 31-33.
 *
 * This function assumes that *coefficients is uninitialized!!
 *
 * Remember that characteristic polynomial is by definition
 *     det(A - lambda*I) = 0
 * The solutions to the lambdas give the eigenvalues.
 */
void get_characteristic_polynomial(const matfun_t* A, matfun_t** coefficients,
                                   matfun_error_t* error)
{
    //ensure that A is a square matrix
    if(A->rows != A->cols)
    {
        error->ecode = MATFUN_ERROR_DIMENSION_ERROR;
        return;
    }

    //Calculate traces for A, A^2, A^3, ... A^n.
    //XXX TODO once we implement multiply in place (matfun_multiply_right() in
    //utils.c), we should use that as it will remove unnecessary allocs and
    //frees.
    double* traces = malloc(sizeof(double) * A->rows);
    matfun_t* pow = matfun_dup(A, error);
    for(int i = 0; i < A->rows; i++)
    {
        traces[i] = matfun_trace(pow, error);
        printf("%ith trace = %lf\r\n", i, traces[i]);
        print_matfun(pow);
        matfun_t* temp = matfun_multiply_and_dup(A, pow, error);
        matfun_destroy(pow);
        pow = temp;
    }
    matfun_destroy(pow);

    //Calculate coefficients
    *coefficients = matfun_alloc(1, A->rows + 1, error);
    double neg1_pow_n = ((A->rows % 2) == 0) ? (1.0) : (-1.0);
    MATFUN_ACCESS(*coefficients, 0, 0) = neg1_pow_n;
    for(int i = 1; i < (A->rows + 1); i++)
    {
        //final term in the nth coefficient is ((-1)^n) * trace_n, we can start
        //with that.
        double accum = neg1_pow_n * traces[i - 1];
        for(int j = 1; j < i; j++)
        {
            accum += MATFUN_ACCESS(*coefficients, 0, i - j) * traces[j - 1];
        }
        accum *= (-1.0) / ((double)i);
        MATFUN_ACCESS(*coefficients, 0, i) = accum;
    }
}

/**
 * Finds the eigenvectors and eigenvalues of a given matrix A.  These are
 * returned in the nxn matrix "vectors" and 1xn row matrix "values".
 *
 * @param[in]     A         The matrix to find the eigendecomposition of
 * @param[out]    vectors   Target matfun_t to sture eigenvectors in.  The
 *                eigenvectors will be stored as column vectors.
 * @param[out]    values    Target matfun_t to store eigenvalus in.  The values
 *                will be stored as a row vector.
 * @param[in,out] error
 */
void matfun_naive_eigendecomposition(const matfun_t* A, matfun_t** vectros,
                                     matfun_t** values, matfun_error_t* error)
{
    // Our naive eigendecompositon starts out by finding the
}
