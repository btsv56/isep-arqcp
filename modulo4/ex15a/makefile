main: greater_date.o main.o
	gcc -g -lm greater_date.o main.o -o main
	
greater_date.o: greater_date.c
	gcc -g -c -lm greater_date.c -o greater_date.o

main.o: main.c
	gcc -g -c main.c -o main.o
	
clean:
	rm -f *.o main
	
run: main
	./main