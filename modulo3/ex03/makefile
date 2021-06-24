main: main.o str_copy_porto2.o
	gcc -Wall -g main.o str_copy_porto2.o -o main

main.o: main.c str_copy_porto2.h
	gcc -Wall -g -c main.c
	
str_copy_porto2.o: str_copy_porto2.s
	gcc -Wall -g -c str_copy_porto2.s
	
run: main
	./main
	
clean:
	rm *.o main