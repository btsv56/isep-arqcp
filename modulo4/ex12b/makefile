prog: main.o activate_bit.o
	gcc -Wall -g main.o activate_bit.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
activate_bit.o: activate_bit.s
	gcc -Wall -g -c activate_bit.s -o activate_bit.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
