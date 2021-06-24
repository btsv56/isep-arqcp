main: add_byte.o main.o
	gcc -g -lm add_byte.o main.o -o main
	
add_byte.o: add_byte.c
	gcc -g -c -lm add_byte.c -o add_byte.o

main.o: main.c
	gcc -g -c main.c -o main.o
	
clean:
	rm -f *.o main
	
run: main
	./main