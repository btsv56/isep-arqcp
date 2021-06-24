#include <stdio.h>
#include "asm.h"
#include "sum_v2.h"
#include "sum_v3.h"

int op1=0,op2=0;

/* Apresenta a soma entre op1 e op2, o resultado da expressão (15-op1) -(15-op2) e op4+op3-op2+op1*/
int main(void) {
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	printf("Valor op3:");
	scanf("%d",&op3);
	printf("Valor op4:");
	scanf("%d",&op4);	
	int res;
	res=sum();
	printf("sum = %d:0x%x\n", res,res);
	res=sum_v2();
	printf("sum = %d:0x%x\n", res,res);
	res=sum_v3();
	printf("sum = %d:0x%x\n", res,res);
	return 0;
}
