main: main.o vec_add_one.o
	gcc -Wall -g main.o vec_add_one.o -o main

main.o: main.c vec_add_one.h
	gcc -Wall -g -c main.c
	
vec_add_one.o: vec_add_one.s
	gcc -Wall -g -c vec_add_one.s
	
run: main
	./main
	
clean:
	rm *.o main