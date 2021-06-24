prog: new_matrix.o main.o count_odd_matrix.o
	gcc -g -Wall new_matrix.o count_odd_matrix.o main.o -o prog
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
new_matrix.o: new_matrix.c
	gcc -g -Wall -c new_matrix.c -o new_matrix.o

count_odd_matrix.o: count_odd_matrix.s
	gcc -g -Wall -c count_odd_matrix.s -o count_odd_matrix.o

clean:
	rm *.o prog
	
run: prog
	./prog
