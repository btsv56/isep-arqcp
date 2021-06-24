prog: main.o sum.o
	gcc -g -Wall sum.o main.o -o prog
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
sum.o: sum.s
	gcc -g -Wall -c sum.s -o sum.o

clean:
	rm *.o prog
	
run: prog
	./prog
