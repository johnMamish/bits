#ifndef CAT_H
#define CAT_H

#include <stdint.h>

typedef void * CATData;

__declspec(noalias)
__attribute__((nothrow))
CATData CAT_new (int64_t value);

__declspec(noalias)
__attribute__((nothrow))
const int64_t CAT_get (const CATData v) ;

__declspec(noalias)
__attribute__((nothrow))
void CAT_set (CATData v, int64_t value);

__declspec(noalias)
__attribute__((nothrow))
void CAT_add (CATData result, const CATData v1, const CATData v2);

__declspec(noalias)
__attribute__((nothrow))
void CAT_sub (CATData result, const CATData v1, const CATData v2);

__declspec(noalias)
__attribute__((nothrow))
const int64_t CAT_cost (void);

__declspec(noalias)
__attribute__((nothrow))
const int64_t CAT_variables (void);

#endif
