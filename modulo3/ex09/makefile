prog: main.o vec_search.o
	gcc -Wall -g main.o vec_search.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
vec_search.o: vec_search.s
	gcc -Wall -g -c vec_search.s -o vec_search.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
