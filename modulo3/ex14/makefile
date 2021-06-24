main: main.o vec_diff.o
	gcc -Wall -g main.o vec_diff.o -o main

main.o: main.c vec_diff.h
	gcc -Wall -g -c main.c
	
vec_diff.o: vec_diff.s
	gcc -Wall -g -c vec_diff.s
	
run: main
	./main
	
clean:
	rm *.o main