sort_program: sort_wreps.o main.o
	gcc sort_wreps.o main.o -o sort_program
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
sort_wreps.o: sort_wreps.c
	gcc -g -Wall -c sort_wreps.c -o sort_wreps.o
	
clean:
	rm -f *.o sort_program
	
run: sort_program
	./sort_program
