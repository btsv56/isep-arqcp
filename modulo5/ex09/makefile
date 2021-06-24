prog: fun1.o fun2.o fun3.o fun4.o main.o
	gcc -g -Wall fun1.o fun2.o fun3.o fun4.o main.o -o prog
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
fun1.o: fun1.s
	gcc -g -Wall -c fun1.s -o fun1.o
	
fun2.o: fun2.s
	gcc -g -Wall -c fun2.s -o fun2.o
	
fun3.o: fun3.s
	gcc -g -Wall -c fun3.s -o fun3.o

fun4.o: fun4.s
	gcc -g -Wall -c fun4.s -o fun4.o

clean:
	rm *.o prog
	
run: prog
	./prog
