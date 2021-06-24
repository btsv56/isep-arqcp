#include <stdio.h>
#include "asm.h"
#include "sum_v2.h"

int op1=0, op2=0;

/*Apresenta a soma de dois valores e o resultado da expressão (15-op1)-(15-op2)*/
int main(void) {
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	int res1;
	res1=sum();
	printf("sum = %d:0x%x\n", res1,res1);
	int res2;
	res2=sum_v2();
	printf("sum = %d:0x%x\n", res2,res2);
	return 0;
}
