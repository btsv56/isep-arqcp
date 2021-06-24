prog: main.o zero_count.o
	gcc -Wall -g main.o zero_count.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
zero_count.o: zero_count.s
	gcc -Wall -g -c zero_count.s -o zero_count.o
	
run: prog
	./prog
	
clean:
	rm *.o prog

