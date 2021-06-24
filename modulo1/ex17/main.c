#include <stdio.h>
#include "swap.h"

/*Apresenta o conteudo de dois vetores com elementos trocados*/
int main() {
	int vec1[]={1,2,3,4,5,6};
	int vec2[]={7,8,9,10,11,12};
	int i;
	swap(vec1,vec2,6);
	printf("Elementos do vetor 1: ");
	for(i=0;i<6;i++) {
		printf("%d ",*(vec1+i));
	}
	printf("\nElementos do vetor2: ");
	for(i=0;i<6;i++) {
		printf("%d ",*(vec2+i));
	}
	printf("\n");
	return 0;
}
