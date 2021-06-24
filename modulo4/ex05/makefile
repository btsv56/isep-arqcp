main: main.o inc_and_square.o
	gcc -Wall -g main.o inc_and_square.o -o main
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
inc_and_square.o: inc_and_square.s
	gcc -Wall -g -c inc_and_square.s -o inc_and_square.o
	
run: main
	./main
	
clean:
	rm *.o main