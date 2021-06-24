prog: main.o sum_first_bytes.o
	gcc -Wall -g main.o sum_first_bytes.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
sum_first_bytes.o: sum_first_bytes.s
	gcc -Wall -g -c sum_first_bytes.s -o sum_first_bytes.o
	
run: prog
	./prog
	
clean:
	rm *.o prog

