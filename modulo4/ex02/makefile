prog: main.o sum_n.o
	gcc -Wall -g main.o sum_n.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
sum_n.o: sum_n.s
	gcc -Wall -g -c sum_n.s -o sum_n.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
