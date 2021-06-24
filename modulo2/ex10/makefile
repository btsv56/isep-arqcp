main: main.o sum2ints.o
	gcc -Wall -g main.o sum2ints.o -o main

main.o: main.c sum2ints.h
	gcc -Wall -g -c main.c
	
sum2ints.o: sum2ints.s
	gcc -Wall -g -c sum2ints.s
	
run: main
	./main
	
clean:
	rm *.o main
