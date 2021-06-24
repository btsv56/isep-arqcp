#include <stdio.h>
#include "vec_count_bits_zero.h"
/*Conta o numeros de bits a 0 num vetor de inteiros*/
int main() {
	int res,num=6,i;
	int vec[]={1,2,3,4,5,6};
	printf("Vetor: ");
	for(i=0;i<6;i++) {
		printf("%d ",*(vec+i));
	}
	printf("\n");
	res=vec_count_bits_zero(vec,num);
	printf("Numero de bits a 0: %d\n",res);
	return 0;
}
