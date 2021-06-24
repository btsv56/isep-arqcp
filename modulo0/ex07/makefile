ex07: count_words.o main.o
	gcc -g count_words.o main.o -o ex07 -m32
	
count_words.o: count_words.c
	gcc -g -c count_words.c -o count_words.o -m32
	
main.o: main.c
	gcc -g -c main.c -o main.o -m32
	
clean:
	rm -f *.o ex07
	
run: ex07
	./ex07
