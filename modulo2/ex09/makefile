main: main.o sum_and_subtract.o
	gcc -Wall -g main.o sum_and_subtract.o -o main
	
main.o: main.c sum_and_subtract.h
	gcc -Wall -g -c main.c
	
sum_and_subtract.o: sum_and_subtract.s
	gcc -Wall -g -c sum_and_subtract.s
	
run: main
	./main
	
clean:
	rm *.o main
