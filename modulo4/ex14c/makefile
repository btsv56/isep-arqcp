main: main.o mixed_sum.o
	gcc -Wall -g main.o mixed_sum.o -o main
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
mixed_sum.o: mixed_sum.s
	gcc -Wall -g -c mixed_sum.s -o mixed_sum.o
	
run: main
	./main
	
clean:
	rm *.o main