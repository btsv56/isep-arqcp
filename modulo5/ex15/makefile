prog: main.o stack.o
	gcc -g -Wall main.o stack.o -o prog
	
main.o:main.c
	gcc -g -Wall -c main.c -o main.o
	
stack.o: stack.c
	gcc -c -Wall -g stack.c -o stack.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
