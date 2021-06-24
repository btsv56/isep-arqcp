ex06: string_to_int.o main.o
	gcc -g -lm string_to_int.o main.o -o ex06 -m32
	
string_to_int.o: string_to_int.c
	gcc -g -c -lm string_to_int.c -o string_to_int.o -m32
	
main.o: main.c
	gcc -g -c main.c -o main.o -m32
	
clean:
	rm -f *.o ex06
	
run: ex06
	./ex06
