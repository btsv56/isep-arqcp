main: main.o new_salary.o
	gcc -Wall -g main.o new_salary.o -o main

main.o: main.c new_salary.h
	gcc -Wall -g -c main.c
	
new_salary.o: new_salary.s
	gcc -Wall -g -c new_salary.s
	
run: main
	./main
	
clean:
	rm *.o main
