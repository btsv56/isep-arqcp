main: rotate_left.o rotate_right.o main.o
	gcc -g -lm rotate_left.o rotate_right.o main.o -o main
	
rotate_left.o: rotate_left.c
	gcc -g -c -lm rotate_left.c -o rotate_left.o

rotate_right.o: rotate_right.c
	gcc -g -c -lm rotate_right.c -o rotate_right.o

main.o: main.c
	gcc -g -c main.c -o main.o
	
clean:
	rm -f *.o main
	
run: main
	./main