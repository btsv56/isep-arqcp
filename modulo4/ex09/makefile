main: main.o calculate.o
	gcc -Wall -g main.o calculate.o -o main
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
calculate.o: calculate.s
	gcc -Wall -g -c calculate.s -o calculate.o
	
run: main
	./main
	
clean:
	rm *.o main