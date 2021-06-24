main: main.o asm.o sum_v2.o sum_v3.o
	gcc -g -Wall main.o asm.o sum_v2.o sum_v3.o -o main
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
asm.o: asm.s
	gcc -g -Wall -c asm.s -o asm.o
	
sum_v2.o: sum_v2.s
	gcc -g -Wall -c sum_v2.s -o sum_v2.o
	
sum_v3.o: sum_v3.s
	gcc -g -Wall -c sum_v3.s -o sum_v3.o
	
clean:
	rm *.o main

run: main
	./main
	

