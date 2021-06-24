#include <stdio.h>
#include "find_word.h"

/* Apresenta o endereço de memoria em que uma palavra se encontra numa string ou 0 se não se encontrar*/
int main() {
	char* end;
	char str[]="zfzgzgzhZZjzkzkzkz";
	char word[]="zz";
	end=find_word(str,word,str);
	printf("Endereco da palavra no vetor: %p\n", end);
	return 0;
}
