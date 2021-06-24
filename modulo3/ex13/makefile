prog: main.o keep_positives.o
	gcc -Wall -g main.o keep_positives.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
keep_positives.o: keep_positives.s
	gcc -Wall -g -c keep_positives.s -o keep_positives.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
