prog: main.o test_equal.o
	gcc -Wall -g main.o test_equal.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
test_equal.o: test_equal.s
	gcc -Wall -g -c test_equal.s -o test_equal.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
