program: average.o main.o
	gcc average.o main.o -o prog_avg -m32

average.o: average.c
	gcc -g -Wall -c average.c -o average.o -m32

main.o: main.c
	gcc -g -Wall -c main.c -o main.o -m32

clean:
	rm -f *.o prog_avg

run: program
	./prog_avg
