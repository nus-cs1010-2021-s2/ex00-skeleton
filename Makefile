.SILENT: test
CC=clang
LDLIBS=-lm -lcs1010
INCLUDEDIR=~cs1010/include
CFLAGS=-g -Wall -Wextra -Wpedantic -Wdocumentation -I $(INCLUDEDIR) -L $(LIBDIR)
LIBDIR=~cs1010/lib

all: test

test: echo divide quadratic
	./test.sh echo 4
	./test.sh divide 4
	./test.sh quadratic 4

clean:
	rm echo divide quadratic
# vim:noexpandtab
