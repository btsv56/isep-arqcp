prog: main.o vec_sum.o
	gcc -Wall -g main.o vec_sum.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
vec_sum.o: vec_sum.s
	gcc -Wall -g -c vec_sum.s -o vec_sum.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
