prog: odd_sum.o main.o
	gcc -g odd_sum.o main.o -o prog -m32
	
odd_sum.o: odd_sum.c
	gcc -g -c odd_sum.c -o odd_sum.o -m32
	
main.o: main.c
	gcc -g -c main.c -o main.o -m32
	
clean:
	rm -f *.o prog
	
run: prog
	./prog
