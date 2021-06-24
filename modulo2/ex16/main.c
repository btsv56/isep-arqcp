#include <stdio.h>
#include "steps.h"

int num=3;
//Realiza a operação (3*3 +6)/3 +12 -3- 1
int main() {
	int res;
	res=steps();
	printf("Resultado: %d\n",res);
	return 0;
}
