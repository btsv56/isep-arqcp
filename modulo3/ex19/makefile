prog: main.o frequencies.o
	gcc -Wall -g main.o frequencies.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
frequencies.o: frequencies.s
	gcc -Wall -g -c frequencies.s -o frequencies.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
