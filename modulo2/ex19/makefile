main: main.o needed_time.o
	gcc -Wall -g main.o needed_time.o -o main

main.o: main.c needed_time.h
	gcc -Wall -g -c main.c
	
needed_time.o: needed_time.s
	gcc -Wall -g -c needed_time.s
	
run: main
	./main
	
clean:
	rm *.o main
