prog: main.o encrypt.o
	gcc -Wall -g main.o encrypt.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
encrypt.o: encrypt.s
	gcc -Wall -g -c encrypt.s -o encrypt.o
	
run: prog
	./prog
	
clean:
	rm *.o prog

