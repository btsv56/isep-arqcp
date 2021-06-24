prog: main.o activate_2bits.o
	gcc -Wall -g main.o activate_2bits.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
activate_2bits.o: activate_2bits.s
	gcc -Wall -g -c activate_2bits.s -o activate_2bits.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
