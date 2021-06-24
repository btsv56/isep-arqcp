#include <stdio.h>
#include "where_is.h"

/*Apresenta no ecra o numero de vezes que um carater aparece numa string*/
int main() {
	char str[]="Vetor de strings";
	char c='r';
	int p[16];
	int t,i;
	t=where_is(str,c,p);
	printf("Posições em que o caracter %c aparece na string %s: ",c,str); 
	for(i=0;i<t;i++) {
		 printf("%d ",*(p+i));
	}
	printf("\n");
	return 0;
}
