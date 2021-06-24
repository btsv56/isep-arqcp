prog: main.o locate_greater.o update_grades.o
	gcc -Wall -g main.o locate_greater.o update_grades.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
locate_greater.o: locate_greater.s
	gcc -Wall -g -c locate_greater.s -o locate_greater.o

update_grades.o: update_grades.s
	gcc -Wall -g -c update_grades.s -o update_grades.o
	
run: prog
	./prog
	
clean:
	rm *.o prog