#include <stdio.h>
#include "find_word.h"

//Encontra as vezes que o find_words encontra a palavra dada
int ocurrences(char* str,char* word) {
	int i=0;
	char* temp;
	temp = find_word(str,word,str);
	while(temp != NULL){
		i++;
		temp = find_word(str,word,temp + 1);
	}
	return i;
}
