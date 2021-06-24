#include <stdio.h>
#include "vec_diff.h"

short vec[]={-1,-1,-1}, *ptrvec=vec, x=0;
int num=sizeof(vec)/sizeof(vec[0]);

int main() {
	int result=vec_diff();
	printf("Result = %d\n", result);
	return 0;
}