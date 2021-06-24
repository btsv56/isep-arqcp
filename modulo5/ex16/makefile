prog: main.o approved_semester.o
	gcc -Wall -g main.o approved_semester.o -o prog

main.o: main.c
	gcc -Wall -g -c main.c -o main.o

approved_semester.o: approved_semester.s
	gcc -Wall -g -c approved_semester.s -o approved_semester.o

run: prog
	./prog

clean:
	rm *.o prog