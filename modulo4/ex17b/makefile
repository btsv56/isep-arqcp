main: main.o add_byte.o
	gcc -Wall -g main.o add_byte.o -o main
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
add_byte.o: add_byte.s
	gcc -Wall -g -c add_byte.s -o add_byte.o
	
run: main
	./main
	
clean:
	rm *.o main