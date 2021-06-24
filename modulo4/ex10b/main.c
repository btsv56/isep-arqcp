#include <stdio.h>
#include "count_bits_zero.h"
/*Conta o numero de bits a 0 de um inteiro	*/
int main() {
	int res,x;
	printf("Insira um numero:");
	scanf("%d",&x);
	res=count_bits_zero(x);
	printf("Numero de bits a 0: %d\n",res);
	return 0;
}
