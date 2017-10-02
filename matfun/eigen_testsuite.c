#include <stdio.h>
#include <stdlib.h>

#include "matfun.h"
#include "utils.h"
#include "eigen.h"


static void test_mat_string(const char* matdescriptor)
{
    matfun_t m;
    str_to_matfun(&m, matdescriptor);
    printf("finding characteristic poly of\r\n");
    print_matfun(&m);

    matfun_t* coeff;
    matfun_error_t error = {MATFUN_ERROR_NO_ERROR};
    get_characteristic_polynomial(&m, &coeff, &error);
    for(int i = 0; i < (coeff->cols - 1); i++)
        printf("%lf*x^%i + ", MATFUN_ACCESS(coeff, 0, i), coeff->cols - i);
    printf("%lf\r\n\r\n", MATFUN_ACCESS(coeff, 0, coeff->cols - 1));

    free(m.mat);
    free(coeff);
}


int main(int argc, char** argv)
{
    matfun_t result1;
    str_to_matfun(&result1, "[[1 -11 30 49 -272]]");
    test_mat_string("[[1 -4 3 2] [-3 3 2 2] [2 1 3 3] [-3 -2 1 4]]");
    printf("expected coefficients:\r\n");
    print_matfun(&result1);
    printf("\r\n");

    matfun_t result2;
    str_to_matfun(&result2, "[[1 -4 6 -4 1]]");
    test_mat_string("[[1 0 0 0] [0 1 0 0] [0 0 1 0] [0 0 0 1]]");
    printf("expected coefficients:\r\n");
    print_matfun(&result2);
    printf("\r\n");

    test_mat_string("[[1 0 0 0 0 0] [0 1 0 0 0 0] [0 0 1 0 0 0] "
                    " [0 0 0 1 0 0] [0 0 0 0 1 0] [0 0 0 0 0 1]]");
    test_mat_string("[[1 0 0 0 0] [0 1 0 0 0] [0 0 1 0 0] "
                    " [0 0 0 1 0] [0 0 0 0 1]]");
    matfun_t result3;
    str_to_matfun(&result3, "[[1 -12 59 -347 -32986 83487 2057798]]");
    test_mat_string("[[5 1 -5 2 -3 -7] [-9 4 -4 -2 -6 -8] [7 10 0 8 9 -1] "
                    " [6 3 -10 3 -2 3] [-1 2 6 -4 -7 5] [-8 3 -10 9 -5 7]]");
    printf("expected coefficients:\r\n");
    print_matfun(&result3);
    printf("\r\n");

    return 0;
}
