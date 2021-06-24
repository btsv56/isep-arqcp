find_word_prog: find_word.o main.o
	gcc find_word.o main.o -o find_word_prog
	
main.o: main.c
	gcc -c -Wall -g main.c -o main.o
	
find_word.o: find_word.c
	gcc -c -Wall -g find_word.c -o find_word.o
	
clean:
	rm *.o find_word_prog

run: find_word_prog
	./find_word_prog
