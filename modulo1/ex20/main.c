#include <stdio.h>
#include "find_all_words.h"
#include "ocurrences.h"

int main() {
	char str[]="zz das";
	char word[]="zz";
	char *addrs[sizeof(str)-sizeof(str[1])];
	find_all_words(str,word,addrs);
	printf("Endereco das palavras no vetor\n");
	int i;
	i=ocurrences(str,word);
	int j=0;
	while (j<i) {
		printf("%p\n", addrs[j]);
		j++;
	}
	return 0;
}
