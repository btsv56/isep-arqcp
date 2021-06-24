prog: main.o sum_multiples_x.o
	gcc -Wall -g main.o sum_multiples_x.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
sum_multiples_x.o: sum_multiples_x.c
	gcc -Wall -g -c sum_multiples_x.c -o sum_multiples_x.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
