prog: new_str.o main.o
	gcc -g -Wall new_str.o main.o -o prog
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
new_str.o: new_str.c
	gcc -g -Wall -c new_str.c -o new_str.o

clean:
	rm *.o prog
	
run: prog
	./prog
