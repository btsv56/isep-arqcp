palindrome_prog: main.o palindrome.o
	gcc main.o palindrome.o -o palindrome_prog
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

palindrome.o: palindrome.c
	gcc -g -Wall -c palindrome.c -o palindrome.o
	
clean:
	rm -f *.o palindrome_prog
	
run: palindrome_prog
	./palindrome_prog
