prog: main.o fill_s2.o
	gcc -Wall -g main.o fill_s2.o -o prog

main.o: main.c
	gcc -Wall -g -c main.c -o main.o

fill_s2.o: fill_s2.s
	gcc -Wall -g -c fill_s2.s -o fill_s2.o

run: prog
	./prog

clean:
	rm *.o prog
