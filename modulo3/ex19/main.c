#include <stdio.h>
#include "frequencies.h"

char vec[]={10,20,3};
char* ptrgrades=vec;
int num=3;
int fre[21];
int* ptrfreq=fre;
/*Preenche o vetor apontado por ptrfreq com o numero de notas guardadas no vetor apontado por ptrgrades e apresenta os vetores*/
int main() {
	int i;
	frequencies();
	printf("Vetor Notas:");
	for(i=0;i<3;i++) {
		printf("%d ",*(ptrgrades+i));
	}
	printf("\nFrequencias:");
	for(i=0;i<21;i++) {
		printf("%d ",*(ptrfreq+i));
	}
	printf("\n");
	return 0;
}
