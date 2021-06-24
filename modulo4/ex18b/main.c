#include <stdio.h>
#include "sum_multiples_x.h"
/*Calcula a soma de todos os inteiros de um vetor que são multiplos do segundo byte de x	*/
int main() {
	char vec[]={1,0};
	char *ptr= vec;
	int i=0, num=0x100,res;
	res=sum_multiples_x(ptr,num);
	printf("Vetor: ");
	while(vec[i]!=0) {
		printf("%d ",*(vec+i));
		i++;
	}
	printf("\n");
	num= num << 16;
	num= (unsigned) num>> 24;;
	printf("Soma dos multiplos de %d : %d\n",num,res);
	return 0;
}


