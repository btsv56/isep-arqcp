main: main.o str_cat.o
	gcc -Wall -g main.o str_cat.o -o main

main.o: main.c str_cat.h
	gcc -Wall -g -c main.c
	
str_cat.o: str_cat.s
	gcc -Wall -g -c str_cat.s
	
run: main
	./main
	
clean:
	rm *.o main