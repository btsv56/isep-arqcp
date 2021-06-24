prog: main.o changes.o
	gcc -Wall -g main.o changes.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
changes.o: changes.c
	gcc -Wall -g -c changes.c -o changes.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
