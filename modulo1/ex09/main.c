#include <stdio.h>
#include "sort_wreps.h"

/*Mostra os elementos de um array de inteiros de forma ascendente e sem repetições*/
int main() {
	int src[]={2,1,1,10,12,11,23,3,4,4};
	int dest[10];
	int m,i;
	m=sort_without_reps(src,10,dest);
	for(i=0;i<m;i++) {
		printf("Vetor[%d]: %d\n",i,*(dest+i));
	}
	return 0;
}
