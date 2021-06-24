#include <stdio.h>
#include "activate_invert_bits.h"
/*Ativa todos os bits de um numero à esquerda de left e à direita por rigth, recebendo o numero,left e right por parametro, invertendo-os de seguida	*/
int main() {
	int res,a,left,right;
	printf("Insira um numero: ");
	scanf("%d",&a);
	printf("Insira a posicao da esquerda: ");
	scanf("%d",&left);
	printf("Insira a posicao da direita: ");
	scanf("%d",&right);
	res=activate_invert_bits(a,left,right);
	printf("Novo numero: %d\n",res);
	return 0;
}


