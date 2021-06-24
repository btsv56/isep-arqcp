#include <stdio.h>
#include "find_word.h"

/*Encontra a palavra recebida por parametro numa string e encontra os pointers onde se ocorre*/
void find_all_words(char* str,char* word, char** addrs) {
	int i=0;
	char* temp;
	temp = find_word(str,word,str);
	while(temp != NULL){
		printf("temp: %p\n", temp);
		addrs[i]=temp;
		i++;
		temp = find_word(str,word,temp + 1);
	}
}
