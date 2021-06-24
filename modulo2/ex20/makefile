prog: main.o check_num.o
	gcc -g -Wall check_num.o main.o -o prog
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
check_num.o: check_num.s
	gcc -g -Wall -c check_num.s -o check_num.o

clean:
	rm *.o prog
	
run: prog
	./prog

