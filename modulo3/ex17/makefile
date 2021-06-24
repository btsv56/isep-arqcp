prog: main.o array_sort.o
	gcc -Wall -g main.o array_sort.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
array_sort.o: array_sort.s
	gcc -Wall -g -c array_sort.s -o array_sort.o
	
run: prog
	./prog
	
clean:
	rm *.o prog

