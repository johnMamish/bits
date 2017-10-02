#include "matfun.h"
#include "utils.h"
#include <stdio.h>

int main(int argc, char** argv)
{
    matfun_error_t error;
    error.ecode = MATFUN_ERROR_NO_ERROR;
    //matfun_t* m = matfun_alloc(3, 3, &error);

    matfun_t m1, m2;
    str_to_matfun(&m1, "[[1 2 3] [4 5 6] [2 2 2]]");
    str_to_matfun(&m2, "[[1 2 3] [4 5 6] [2 2 2]]");

    printf("our matricies are \r\n");
    print_matfun(&m1);
    printf("\r\n");
    print_matfun(&m2);
    printf("\r\n");

    matfun_t* mul = matfun_multiply_and_dup(&m1, &m2, &error);
    printf("multiplied:\r\n");
    print_matfun(mul);

    printf("accessing multiplied[2, 2] gives %lf\r\n"
           "accessing multiplied[0, 2] gives %lf\r\n",
           MATFUN_ACCESS(mul, 2, 2), MATFUN_ACCESS(mul, 0, 2));

    return 0;
}
