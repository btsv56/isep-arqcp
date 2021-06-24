prog: main.o add_matrixes.o new_matrix.o
	gcc -Wall -g main.o add_matrixes.o new_matrix.o -o prog

main.o: main.c
	gcc -Wall -g -c main.c -o main.o

add_matrixes.o: add_matrixes.c
	gcc -Wall -g -c add_matrixes.c -o add_matrixes.o

new_matrix.o: new_matrix.c
	gcc -Wall -g -c new_matrix.c -o new_matrix.o

run: prog
	./prog

clean:
	rm *.o prog