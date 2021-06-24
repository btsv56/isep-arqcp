#include <stdio.h>
#include "sum.h"

int n=2;
/*Apresenta o valor da operação Somatorio de i=1 até 2, a multiplicar por 4 e, de seguida divide por 2*/
int main() {
	int res;
	res=sum();
	printf("Soma: %d\n",res);
	return 0;
}
