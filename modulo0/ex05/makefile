ex05: string_to_int.o main.o
	gcc -g -lm string_to_int.o main.o -o ex05 -m32
	
string_to_int.o: string_to_int.c
	gcc -g -c -lm string_to_int.c -o string_to_int.o -m32

main.o: main.c
	gcc -g -c main.c -o main.o -m32
	
clean:
	rm -f *.o ex05
	
run: ex05
	./ex05
