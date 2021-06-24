#include <stdio.h>
#include "vec_add_one.h"

int vec[]={1,2,3,4,5}, num=(sizeof(vec)/sizeof(vec[0])), *ptrvec=vec;

int main() {
	vec_add_one();
	int i=0;
	for (i=0;i<num;i++) {
		printf("%d ", vec[i]);
	}
	printf("\n");
	return 0;
}