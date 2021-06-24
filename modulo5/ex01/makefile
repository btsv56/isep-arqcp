prog: main.o
	gcc -g -Wall main.o -o prog
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm *.o prog

run: prog
	./prog
