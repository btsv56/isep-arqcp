prog: main.o count_bits_zero.o
	gcc -Wall -g main.o count_bits_zero.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
count_bits_zero.o: count_bits_zero.s
	gcc -Wall -g -c count_bits_zero.s -o count_bits_zero.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
