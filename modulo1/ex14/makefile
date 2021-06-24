prog: frequencies.o main.o
	gcc -g frequencies.o main.o -o prog -m32
	
frequencies.o: frequencies.c
	gcc -g -c frequencies.c -o frequencies.o -m32
	
main.o: main.c
	gcc -g -c main.c -o main.o -m32
	
clean:
	rm -f *.o prog
	
run: prog
	./prog 
