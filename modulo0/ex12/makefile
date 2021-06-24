program: main.o size_string.o
	gcc size_string.o main.o -o prog
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o 
		
size_string.o: size_string.c
	gcc -g -Wall -c size_string.c -o size_string.o 
	
clean:
	rm -f *.o prog_avg
	
run: program
	./prog 
