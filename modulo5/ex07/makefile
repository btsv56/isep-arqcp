prog: main.o fill_s1.o
	gcc -Wall -g main.o fill_s1.o -o prog

main.o: main.c
	gcc -Wall -g -c main.c -o main.o

fill_s1.o: fill_s1.s
	gcc -Wall -g -c fill_s1.s -o fill_s1.o

run: prog
	./prog

clean:
	rm *.o prog