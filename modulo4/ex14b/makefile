main: main.o join_bits.o
	gcc -Wall -g main.o join_bits.o -o main
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
join_bits.o: join_bits.s
	gcc -Wall -g -c join_bits.s -o join_bits.o
	
run: main
	./main
	
clean:
	rm *.o main