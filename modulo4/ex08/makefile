prog: main.o calc.o
	gcc -Wall -g main.o calc.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
calc.o: calc.s
	gcc -Wall -g -c calc.s -o calc.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
