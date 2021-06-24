prog: main.o fs.o f2s.o f3s.o f4s.o fc.o f2c.o f3c.o f4c.o
	gcc -g -Wall fs.o f2s.o f3s.o f4s.o fc.o f2c.o f3c.o f4c.o main.o -o prog
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
fs.o: fs.s
	gcc -g -Wall -c fs.s -o fs.o
	
f2s.o: f2s.s
	gcc -g -Wall -c f2s.s -o f2s.o
	
f3s.o: f3s.s
	gcc -g -Wall -c f3s.s -o f3s.o
	
f4s.o: f4s.s
	gcc -g -Wall -c f4s.s -o f4s.o
	
fc.o: fc.c
	gcc -g -Wall -c fc.c -o fc.o
	
f2c.o: f2c.c
	gcc -g -Wall -c f2c.c -o f2c.o
	
f3c.o: f3c.c
	gcc -g -Wall -c f3c.c -o f3c.o							

f4c.o: f4c.c
	gcc -g -Wall -c f4c.c -o f4c.o
	
clean:
	rm *.o prog
	
run: prog
	./prog
