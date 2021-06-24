#include <stdio.h>
#include "activate_bit.h"
/*Coloca o bit pos a 1 no valor inteiro apontado pelo endreço recebido por parametro retornando 1 se o bit pos foi alterado*/
int main() {
	int res,num,pos;
	printf("Insira um numero: ");
	scanf("%d",&num);
	printf("Insira uma posicao: ");
	scanf("%d",&pos);
	res=activate_bit(&num,pos);
	if(res==1) {
		printf("Novo numero: %d\n",num);
	}else{
		printf("O numero não foi alterado\n");
	}
	return 0;
}
