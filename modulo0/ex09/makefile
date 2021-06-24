ex09: largest_number.o main.o
	gcc -g largest_number.o main.o -o ex09 -m32
	
largest_number.o: largest_number.c
	gcc -g -c largest_number.c -o largest_number.o -m32
	
main.o: main.c
	gcc -g -c main.c -o main.o -m32
	
clean:
	rm -f *.o ex09
	
run: ex09
	./ex09
