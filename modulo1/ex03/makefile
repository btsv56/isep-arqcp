even_program: main.o sum_even.o
	gcc main.o sum_even.o -o even_program
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
sum_even.o: sum_even.c
	gcc -g -Wall -c sum_even.c -o sum_even.o
	
clean:
	rm -f *.o even_program
	
run: even_program
	./even_program
