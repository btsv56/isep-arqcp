#include <stdio.h>
#include "stack.h"

int main() {
	push(12);
	push(32);
	int num=pop();
	printf("Numero 32: %d\n",num);
	push(30);
	num=pop();
	printf("Numero 30: %d\n",num);
	num=pop();
	printf("Numero 12: %d\n",num);
	return 0;
}
