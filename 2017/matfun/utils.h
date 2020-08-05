/**
 * Copyright John Mamish 2017.  Licensed under GPL.  Not for use in safety-
 * critical applications.
 */

/**
 * Simple utils for matfun.  "Simple" describes anything that I can write off
 * the top of my head without thinking hard enough to break a sweat.
 */

#include "matfun.h"

#ifndef _MATFUN_UTILS_H
#define _MATFUN_UTILS_H

#define MATFUN_ACCESS(m, i, j) ((m)->mat[((i)*(m)->cols) + (j)])

matfun_t* matfun_alloc(int, int, matfun_error_t*);
void matfun_destroy(matfun_t*);
matfun_t* matfun_dup(const matfun_t*, matfun_error_t*);

double matfun_trace(const matfun_t*, matfun_error_t*);
matfun_t* matfun_multiply_and_dup(const matfun_t*, const matfun_t*, matfun_error_t*);


#endif
