prog: main.o sub_smaller.o
	gcc -Wall -g main.o sub_smaller.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
sub_smaller.o: sub_smaller.s
	gcc -Wall -g -c sub_smaller.s -o sub_smaller.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
