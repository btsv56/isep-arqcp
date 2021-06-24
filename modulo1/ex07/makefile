sort_program: array_sort.o main.o
	gcc array_sort.o main.o -o sort_program
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
array_sort.o: array_sort.c
	gcc -g -Wall -c array_sort.c -o array_sort.o
	
clean:
	rm -f *.o sort_program
	
run: sort_program
	./sort_program
