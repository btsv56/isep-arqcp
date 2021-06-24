#include <stdio.h>
#include "add_byte.h"

int main() {
	int v1[] = {6,0xffffffff,0xff,0xfffff0ff,0xfffff8ff,0,4};
	int v2[7] = {0,0,0,0,0,0,0};
	int *vec1=v1;
	int *vec2=v2;
	char x=5;
	add_byte(x, vec1, vec2);
	int i;
	for (i=0;i<7;i++) {
		printf("%d ", v2[i]);
	}
	printf("\n");
	return 0;
}