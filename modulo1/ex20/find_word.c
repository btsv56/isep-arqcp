#include <stdio.h>

/*Encontra uma palavra recebida por parametro numa string retornando o seu endereço de memoria
 * ou null se não encontra*/
char* find_word(char* str,char* word, char* initial_addr) {
	char flag=0;
	int j=0,i=0;
	while(*(str+i)!='\0') {
		if(str+i==initial_addr) {
			flag=1;
		}
		i++;
	}
	if(flag==0) {
		return NULL;
	}
	i=0;
	flag=0;
	while(*(i+initial_addr)!='\0') {
		j=0;
		while(*(word+j)!='\0') {
			if(*(initial_addr+i+j)!=*(word+j)&& *(initial_addr + i + j) != *(word +j) + 32 && *(initial_addr + i + j) != *(word +j) - 32) {
				flag=1;
			}
			j++;
		}
		if(flag==0) {
			return initial_addr+i;
		}
		flag=0;
		i++;
	}
	return NULL;
}
		
