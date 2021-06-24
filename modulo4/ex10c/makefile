prog: main.o vec_count_bits_zero.o
	gcc -Wall -g main.o vec_count_bits_zero.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
vec_count_bits_zero.o: vec_count_bits_zero.s
	gcc -Wall -g -c vec_count_bits_zero.s -o vec_count_bits_zero.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
