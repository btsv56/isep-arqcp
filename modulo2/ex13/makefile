main: main.o getArea.o
	gcc -Wall -g main.o getArea.o -o main

main.o: main.c getArea.h
	gcc -Wall -g -c main.c
	
getArea.o: getArea.s
	gcc -Wall -g -c getArea.s
	
run: main
	./main
	
clean:
	rm *.o main
