prog: compress_shorts.o main.o
	gcc -g compress_shorts.o main.o -o prog -m32
	
compress_shorts.o: compress_shorts.c
	gcc -g -c compress_shorts.c -o compress_shorts.o -m32
	
main.o: main.c
	gcc -g -c main.c -o main.o -m32
	
clean:
	rm -f *.o prog
	
run: prog
	./prog  
