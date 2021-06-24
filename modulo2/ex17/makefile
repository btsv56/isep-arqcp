main: main.o calculator.o
	gcc -Wall -g main.o calculator.o -o main

main.o: main.c calculator.h
	gcc -Wall -g -c main.c
	
calculator.o: calculator.s
	gcc -Wall -g -c calculator.s
	
run: main
	./main
	
clean:
	rm *.o main
