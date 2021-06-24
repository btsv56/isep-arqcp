main: main.o count_even.o
	gcc -Wall -g main.o count_even.o -o main
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
count_even.o: count_even.s
	gcc -Wall -g -c count_even.s -o count_even.o
	
run: main
	./main
	
clean:
	rm *.o main