prog: capitalize.o main.o
	gcc -g capitalize.o main.o -o prog -m32
	
capitalize.o: capitalize.c
	gcc -g -c capitalize.c -o capitalize.o -m32
	
main.o: main.c
	gcc -g -c main.c -o main.o -m32
	
clean:
	rm -f *.o prog
	
run: prog
	./prog 
