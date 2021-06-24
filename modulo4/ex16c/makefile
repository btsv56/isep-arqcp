prog: main.o changes_vec.o
	gcc -Wall -g main.o changes_vec.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
changes_vec.o: changes_vec.s
	gcc -Wall -g -c changes_vec.s -o changes_vec.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
