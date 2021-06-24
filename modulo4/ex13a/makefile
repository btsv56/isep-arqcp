prog: main.o activate_bits.o
	gcc -Wall -g main.o activate_bits.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
activate_bits.o: activate_bits.c
	gcc -Wall -g -c activate_bits.c -o activate_bits.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
