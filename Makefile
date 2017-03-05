OBJ = mxv-serial

CC = gcc
CFLAGS = -Wall -ansi -pedantic -std=c99
LFLAGS = -o $(OBJ) -fopenmp

all: mxv-serial mxv-omp

mxv-serial: mxv-serial.c
	gcc $(CFLAGS) -o mxv-serial mxv-serial.c -fopenmp
	
mxv-omp: mxv-omp.c
	gcc $(CFLAGS) -o mxv-omp mxv-omp.c -fopenmp
	
# $(OBJ): $(OBJ).c
# $(CC) $(CFLAGS) $(OBJ).c $(LFLAGS)

clean:
	rm -f a.out mxv-serial mxv-omp