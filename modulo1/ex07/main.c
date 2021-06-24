#include <stdio.h>
#include "array_sort.h"

/*Apresenta um vetor de inteiros ordenado por ordem crescente*/
int main() {
	int vec[]={3,1,5,10,2,1,12};
	int i;
	array_sort1(vec,7);
	for(i=0;i<7;i++) {
		printf("Vetor[%d]: %d\n",i,vec[i]);
	}
	return 0;
}
