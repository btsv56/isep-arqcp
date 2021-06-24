#include <stdio.h>
#include "count_even.h"

int main() {
	short x[]={1,2,3,4,5,6};
	int n=sizeof(x)/sizeof(x[0]);
	short *vec=x;
	int result=count_even(vec,n);
	printf("result = %d\n", result);
	return 0;
}