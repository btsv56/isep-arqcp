prog: main.o return_unionB_b.o
	gcc -g -Wall main.o return_unionB_b.o -o prog
	
main.o:main.c
	gcc -g -Wall -c main.c -o main.o
	
return_unionB_b.o: return_unionB_b.s
	gcc -c -Wall -g return_unionB_b.s -o return_unionB_b.o
	
run: prog
	./prog
	
clean:
	rm *.o prog
