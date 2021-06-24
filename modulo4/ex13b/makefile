prog: main.o activate_bits.o
	gcc -Wall -g main.o activate_bits.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
activate_bits.o: activate_bits.s
	gcc -Wall -g -c activate_bits.s -o activate_bits.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
