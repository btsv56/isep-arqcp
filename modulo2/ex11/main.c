#include <stdio.h>
#include "test_flags.h"

unsigned int op1=4, op2=5;

int main() {
	char e=test_flags();
	printf("op1 = %d\nop2 = %d\n", op1, op2);
	printf("e = %d\n\n", e);
	op1=25;
	op2=26;
	e=test_flags();
	printf("op1 = %d\nop2 = %d\n", op1, op2);
	printf("e = %d\n\n", e);
	op1=256;
	op2=26;
	e=test_flags();
	printf("op1 = %d\nop2 = %d\n", op1, op2);
	printf("e = %d\n\n", e);
	op1=10000;
	op2=26;
	e=test_flags();
	printf("op1 = %d\nop2 = %d\n", op1, op2);
	printf("e = %d\n\n", e);
	op1=2147483627;
	op2=26;
	e=test_flags();
	printf("op1 = %d\nop2 = %d\n", op1, op2);
	printf("e = %d\n\n", e);
	return 0;
}
