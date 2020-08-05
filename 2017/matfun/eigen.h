#include "matfun.h"

#ifndef _EIGEN_H
#define _EIGEN_H

void matfun_naive_eigendecomposition(const matfun_t*, matfun_t**, matfun_t**,
                                     matfun_error_t*);
void get_characteristic_polynomial(const matfun_t*, matfun_t**, matfun_error_t*);

#endif
