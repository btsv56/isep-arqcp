prog: main.o isMultiple.o
	gcc -Wall -g main.o isMultiple.o -o prog
	
main.o: main.c
	gcc -c -Wall -g main.c -o main.o
	
isMultiple.o: isMultiple.s
	gcc -c -Wall -g isMultiple.s -o isMultiple.o
	
clean: 
	rm *.o prog
	
run: prog
	./prog
