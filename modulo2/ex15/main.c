#include <stdio.h>
#include "compute.h"

int A=-2,B=1,C=1,D=1;
//Apresenta o resultado da operação ((A*B)+c)/D=((2*10)+2)/1)
int main() {
	int res;
	res=compute();
	printf("Result of the expression: %d\n",res);
	return 0;
}
