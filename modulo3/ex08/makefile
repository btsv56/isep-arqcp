main: main.o vec_sum_even.o
	gcc -Wall -g main.o vec_sum_even.o -o main

main.o: main.c vec_sum_even.h
	gcc -Wall -g -c main.c
	
vec_sum_even.o: vec_sum_even.s
	gcc -Wall -g -c vec_sum_even.s
	
run: main
	./main
	
clean:
	rm *.o main