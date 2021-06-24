main: main.o cube.o
	gcc -Wall -g main.o cube.o -o main
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
cube.o: cube.s
	gcc -Wall -g -c cube.s -o cube.o
	
run: main
	./main
	
clean:
	rm *.o main