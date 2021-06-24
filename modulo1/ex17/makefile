swap_program: main.o swap.o
	gcc main.o swap.o -o swap_program

main.o: main.c
	gcc -c -Wall -g main.c -o main.o
	
swap.o:swap.c
	gcc -c -Wall -g swap.c -o swap.o
	
clean: 
	rm *.o swap_program
	
run: swap_program
	./swap_program
