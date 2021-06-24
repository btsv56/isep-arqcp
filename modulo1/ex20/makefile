find_word_prog: find_word.o find_all_words.o ocurrences.o main.o
	gcc find_word.o find_all_words.o ocurrences.o main.o -o find_word_prog
	
main.o: main.c
	gcc -c -Wall -g main.c -o main.o
	
find_word.o: find_word.c
	gcc -c -Wall -g find_word.c -o find_word.o
	
find_all_words.o: find_all_words.c
	gcc -c -Wall -g find_all_words.c -o find_all_words.o
	
ocurrences.o: ocurrences.c
	gcc -c -Wall -g ocurrences.c -o ocurrences.o
	
clean:
	rm *.o find_word_prog

run: find_word_prog
	./find_word_prog
