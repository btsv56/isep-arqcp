main: main.o swap.o
	gcc -Wall -g main.o swap.o -o main

main.o: main.c swap.h
	gcc -Wall -g -c main.c
	
swap.o: swap.s
	gcc -Wall -g -c swap.s
	
run: main
	./main
	
clean:
	rm *.o main