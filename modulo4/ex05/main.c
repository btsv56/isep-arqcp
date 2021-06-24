#include <stdio.h>
#include "inc_and_square.h"

int main() {
	int v2=3;
	int x=4;
	int *v1=&x;
	int result=inc_and_square(v1,v2);
	printf("result = %d\nx = %d\n", result, x);
	return 0;
}