prog: main.o steps.o
	gcc -g -Wall steps.o main.o -o prog
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
steps.o: steps.s
	gcc -g -Wall -c steps.s -o steps.o

clean:
	rm *.o prog
	
run: prog
	./prog
