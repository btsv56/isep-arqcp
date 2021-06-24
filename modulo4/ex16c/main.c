#include <stdio.h>
#include "changes_vec.h"
/*Para cada numero num vetor de inteiros, inverte os 4 bits mais signficativos do terceiro byte de cada numero mas apenas quando esses 4 bits são maiores que 7	*/
int main() {
	int vec[]={1,2,3,4,5,6},num=6,i;
	int *ptr= vec;
	changes_vec(ptr,num);
	printf("Vetor:");
	for(i=0;i<6;i++) {
		printf("%d ",*(vec+i));
	}
	printf("\n");
	return 0;
}


