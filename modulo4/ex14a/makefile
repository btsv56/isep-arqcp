main: join_bits.o main.o
	gcc -g -lm join_bits.o main.o -o main
	
join_bits.o: join_bits.c
	gcc -g -c -lm join_bits.c -o join_bits.o

main.o: main.c
	gcc -g -c main.c -o main.o
	
clean:
	rm -f *.o main
	
run: main
	./main