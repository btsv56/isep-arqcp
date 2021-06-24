#include <stdio.h>
#include "calc.h"
/*Realiza a operação z=(*b)-a r=c*z-2*/
int main() {
	int res,a,b,c;
	printf("Insira tres numeros: ");
	scanf("%d\n%d\n%d",&a,&b,&c);
	res=calc(a,&b,c);
	printf("Valor: %d\n",res);
	return 0;
}
