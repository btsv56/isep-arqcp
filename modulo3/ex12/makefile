main: main.o vec_zero.o
	gcc -Wall -g main.o vec_zero.o -o main

main.o: main.c vec_zero.h
	gcc -Wall -g -c main.c
	
vec_zero.o: vec_zero.s
	gcc -Wall -g -c vec_zero.s
	
run: main
	./main
	
clean:
	rm *.o main