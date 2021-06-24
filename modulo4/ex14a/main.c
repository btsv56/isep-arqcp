#include <stdio.h>
#include "join_bits.h"

int main() {
	int a=-1;
	int b=0;
	int pos=15;
	int result=join_bits(a,b,pos);
	printf("result = %p\n", result);
	return 0;
}