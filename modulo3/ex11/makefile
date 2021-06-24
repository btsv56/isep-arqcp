prog: main.o vec_greater20.o
	gcc -Wall -g main.o vec_greater20.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
vec_greater20.o: vec_greater20.s
	gcc -Wall -g -c vec_greater20.s -o vec_greater20.o
	
run: prog
	./prog
	
clean:
	rm *.o prog

