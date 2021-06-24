main: main.o sort_without_reps.o
	gcc -Wall -g main.o sort_without_reps.o -o main

main.o: main.c sort_without_reps.h
	gcc -Wall -g -c main.c
	
sort_without_reps.o: sort_without_reps.s
	gcc -Wall -g -c sort_without_reps.s
	
run: main
	./main
	
clean:
	rm *.o main