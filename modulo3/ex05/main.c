#include <stdio.h>
#include "vec_sum.h"

int vec[]={1,2,3,4};
int* ptrvec=vec;
int num=4;
/*Apresenta o valor da soma dos elementos de ptrvec e a sua média*/
int main(){
	int resS,resA,i;
	resS=vec_sum();
	resA=vec_avg();
	printf("Vetor: ");
	for(i=0;i<4;i++) {
		printf("%d ",*(vec+i));
	}
	printf("\nSoma: %d\nMédia: %d\n",resS,resA);
	return 0;
}
