prog: main.o compute.o 
	gcc -g -Wall compute.o main.o -o prog
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
compute.o: compute.s
	gcc -g -Wall -c compute.s -o compute.o

clean:
	rm *.o prog
	
run: prog
	./prog
