main: main.o count_seq.o
	gcc -Wall -g main.o count_seq.o -o main

main.o: main.c count_seq.h
	gcc -Wall -g -c main.c
	
count_seq.o: count_seq.s
	gcc -Wall -g -c count_seq.s
	
run: main
	./main
	
clean:
	rm *.o main