LIBFILES = matfun.c utils.c eigen.c

all: $(LIBFILES)
	gcc -std=c99 main.c -o matfun -g
	gcc -std=c99 $(LIBFILES) utils_testsuite.c -o utils_testsuite
