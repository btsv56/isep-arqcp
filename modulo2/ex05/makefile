main: main.o swapBytes.o
	gcc -Wall -g main.o swapBytes.o -o main
	
main.o: main.c swapBytes.h
	gcc -Wall -g -c main.c
	
swapBytes.o: swapBytes.s
	gcc -Wall -g -c swapBytes.s
	
run: main
	./main
	
clean:
	rm *.o main
