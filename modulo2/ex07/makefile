main: main.o swap_bytes.o concatBytes.o crossSumBytes.o
	gcc -Wall -g main.o swap_bytes.o concatBytes.o crossSumBytes.o -o main
	
main.o: main.c swap_bytes.h
	gcc -Wall -g -c main.c
	
swap_bytes.o: swap_bytes.s
	gcc -Wall -g -c swap_bytes.s
	
concatBytes.o: concatBytes.s
	gcc -Wall -g -c concatBytes.s
	
crossSumBytes.o: crossSumBytes.s
	gcc -Wall -g -c crossSumBytes.s
	
run: main
	./main
	
clean:
	rm *.o main
