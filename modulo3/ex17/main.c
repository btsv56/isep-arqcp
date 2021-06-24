#include <stdio.h>
#include "array_sort.h"

int vec[]={1,2,3,6,1,2,10};
int* ptrvec=vec;
int num=7;
/*Apresenta um array ordenado por ordem descendente*/
int main() {
	int i;
	printf("Vetor original:");
	for(i=0;i<7;i++) {
		printf("%d ",*(ptrvec+i));
	}
	array_sort();
	printf("\nVetor ordenado:");
	for(i=0;i<7;i++) {
		printf("%d ",*(ptrvec+i));
	}
	printf("\n");
	return 0;
}
