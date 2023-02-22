
CC = gcc
CFLAGS = -g -Wall
LDFLAGS= -lm

default: procprog

procprog: main.o proc.o
	$(CC) $(CFLAGS) $(LDFLAGS) -o procprog main.o proc.o

main.o: main.c types.h defs.h
	$(CC) $(CFLAGS) $(LDFLAGS) -c main.c

proc.o: proc.c types.h defs.h proc.h
	$(CC) $(CFLAGS) $(LDFLAGS) -c proc.c

clean:
	rm -f procprog *.o

