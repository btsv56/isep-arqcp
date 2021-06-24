prog: upper2.o main.o
	gcc -g upper2.o main.o -o prog -m32
	
upper2.o: upper2.c
	gcc -g -c upper2.c -o upper2.o -m32
	
main.o: main.c
	gcc -g -c main.c -o main.o -m32
	
clean:
	rm -f *.o prog
	
run: prog
	./prog 
