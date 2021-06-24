#include <stdio.h>
#include "vec_sum_even.h"

int vec[]={1,10,-2,4}, num=(sizeof(vec)/sizeof(vec[0])), *ptrvec=vec, even=0;

int main() {
	int result=vec_sum_even();
	printf("result = %d\n", result);
	return 0;
}