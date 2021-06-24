#include <stdio.h>
#include "count_seq.h"

int vec[]={1,2,3,4,5,6,7,8,9,10}, *ptrvec=vec, num=sizeof(vec)/sizeof(vec[0]);

int main() {
	int result=count_seq();
	printf("Result = %d\n", result);
	return 0;
}