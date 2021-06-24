#include <stdio.h>
#include "sum_first_bytes.h"

int vec[]={128,2,3};
int* ptrvec=vec;
int num=3;
/*Apresenta a soma do primeiro byte de cada valor de um array de ints*/
int main() {
	int res,i;
	res=sum_first_byte();
	printf("Vetor:");
	for(i=0;i<3;i++) {
		printf("%d ",*(ptrvec+i));
	}
	printf("Soma: %d\n",res);
	return 0;
}
