main: main.o test_flags.o
	gcc -Wall -g main.o test_flags.o -o main

main.o: main.c test_flags.h
	gcc -Wall -g -c main.c
	
test_flags.o: test_flags.s
	gcc -Wall -g -c test_flags.s
	
run: main
	./main
	
clean:
	rm *.o main
