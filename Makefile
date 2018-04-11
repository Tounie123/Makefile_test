test: main.o fun.o
	cc -o test main.o fun.o

main.o: main.c fun.h
	cc -c main.c

fun.o: fun.c fun.h
	cc -c fun.c

clean:
	rm -rf *.o test
