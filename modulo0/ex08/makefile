program: string_to_integer.o main.o
	gcc string_to_integer.o main.o -o program -lm
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
string_to_integer.o: string_to_integer.c
	gcc -g -Wall -c string_to_integer.c -o string_to_integer.o
	
clean: 
	rm -f *.o program
	
run: program
	./program
	
