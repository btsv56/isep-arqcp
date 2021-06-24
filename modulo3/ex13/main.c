#include <stdio.h>
#include "keep_positives.h"

int vec[]={-12,1000,-1001};
int* ptrvec=vec;
int num=3;
/*Troca os valores negativos de um array com o valor do indice em que se encontram no array e apresenta o vetor*/
int main() {
	int i;
	printf("Vetor original:");
	for(i=0;i<3;i++) {
		printf("%d ",*(ptrvec+i));
	}
	keep_positives();
	printf("\nVetor alterado:");
	for(i=0;i<3;i++) {
		printf("%d ",*(ptrvec+i));
	}
	printf("\n");
	return 0;
}
