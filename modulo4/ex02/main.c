#include <stdio.h>
#include "sum_n.h"
/*Calcula a soma dos inteiros de 1 até n*/
int main() {
	int res,num;
	printf("Insira o numero: ");
	scanf("%d",&num);
	res=sum_n(num);
	printf("Soma: %d\n",res);
	return 0;
}
