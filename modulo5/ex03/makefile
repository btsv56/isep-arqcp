prog: main.o fill_student.o
	gcc -g -Wall main.o fill_student.o -o prog
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
fill_student.o: fill_student.c
	gcc -g -Wall -c fill_student.c -o fill_student.o
	
clean:
	rm *.o prog

run: prog
	./prog
