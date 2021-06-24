prog: power_ref.o main.o
	gcc -g power_ref.o main.o -o prog -m32
	
power_ref.o: power_ref.c
	gcc -g -c power_ref.c -o power_ref.o -m32
	
main.o: main.c
	gcc -g -c main.c -o main.o -m32
	
clean:
	rm -f *.o prog
	
run: prog
	./prog
