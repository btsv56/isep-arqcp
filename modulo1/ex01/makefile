
program: print.o main.o
	gcc print.o main.o -o print_program
	
main.o: main.c
	gcc -c -Wall -g main.c -o main.o
	
print.o: print.c
	gcc -c -Wall -g print.c -o print.o
	
clean: 
	rm -f *.o print_program
	
run: program
	./print_program
