where_is_program: main.o where_is.o
	gcc main.o where_is.o -o where_is_program
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

where_is.o: where_is.c
	gcc -g -Wall -c where_is.c -o where_is.o
	
clean:
	rm -f *.o where_is_program
	
run: where_is_program
	./where_is_program
