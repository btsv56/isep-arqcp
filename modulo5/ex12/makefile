prog: main.o find_matrix.o new_matrix.o
	gcc -Wall -g main.o find_matrix.o new_matrix.o -o prog

main.o: main.c
	gcc -Wall -g -c main.c -o main.o

find_matrix.o: find_matrix.c
	gcc -Wall -g -c find_matrix.c -o find_matrix.o

new_matrix.o: new_matrix.c
	gcc -Wall -g -c new_matrix.c -o new_matrix.o

run: prog
	./prog

clean:
	rm *.o prog