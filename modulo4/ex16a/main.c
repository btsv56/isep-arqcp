#include <stdio.h>
#include "changes.h"
/*Inverte os 4 bits mais signficativos do terceiro byte de um numero mas apenas quando esses 4 bits são maiores que 7	*/
int main() {
	int num;
	printf("Insira um numero: ");
	scanf("%d",&num);
	changes(&num);
	printf("Novo numero: %d\n",num);
	return 0;
}


