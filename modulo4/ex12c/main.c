#include <stdio.h>
#include "activate_2bits.h"
/*Coloca o bit pos e o bit 31-pos a 1 no valor inteiro apontado pelo endreço recebido por parametro retornando 1 se o bit pos foi alterado*/
int main() {
	int num,pos;
	printf("Insira um numero: ");
	scanf("%d",&num);
	printf("Insira uma posicao: ");
	scanf("%d",&pos);
	activate_2bits(&num,pos);
	printf("Novo numero: %d\n",num);
	return 0;
}

