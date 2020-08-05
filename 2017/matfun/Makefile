LIBFILES = matfun.c utils.c eigen.c matfun.h utils.h eigen.h

all: $(LIBFILES)
	gcc -std=c99 $(LIBFILES) eigen_testsuite.c -g -o eigen_testsuite
	gcc -std=c99 $(LIBFILES) utils_testsuite.c -g -o utils_testsuite
