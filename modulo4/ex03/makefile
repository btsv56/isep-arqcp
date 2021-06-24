main: main.o greatest.o
	gcc -Wall -g main.o greatest.o -o main
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
greatest.o: greatest.s
	gcc -Wall -g -c greatest.s -o greatest.o
	
run: main
	./main
	
clean:
	rm *.o main