prog: new_matrix.o main.o
	gcc -g -Wall new_matrix.o main.o -o prog
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
new_matrix.o: new_matrix.c
	gcc -g -Wall -c new_matrix.c -o new_matrix.o

clean:
	rm *.o prog
	
run: prog
	./prog
