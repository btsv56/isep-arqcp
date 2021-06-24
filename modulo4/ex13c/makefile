prog: main.o activate_invert_bits.o
	gcc -Wall -g main.o activate_invert_bits.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
activate_invert_bits.o: activate_invert_bits.s
	gcc -Wall -g -c activate_invert_bits.s -o activate_invert_bits.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
