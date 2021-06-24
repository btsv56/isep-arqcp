prog: where_exists.o main.o
	gcc -g where_exists.o main.o -o prog -m32
	
where_exists.o: where_exists.c
	gcc -g -c where_exists.c -o where_exists.o -m32
	
main.o: main.c
	gcc -g -c main.c -o main.o -m32
	
clean:
	rm -f *.o prog
	
run: prog
	./prog 
