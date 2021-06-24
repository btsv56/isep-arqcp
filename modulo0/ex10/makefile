program: average.o main.o
	gcc average.o main.o -o prog_avg

average.o: average.c
	gcc -g -Wall -c average.c -o average.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog_avg

run: program
	./prog_avg
