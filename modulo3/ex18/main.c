#include <stdio.h>
#include "sort_without_reps.h"

int src[]={1,1,1,3,2,5,5}, num=sizeof(src)/sizeof(src[0]), *ptrsrc=src, *ptrdest;

int main() {
	int i=0;
	int dest[num];
	for (i=0;i<num;i++) {
		dest[i]=0;
	}
	ptrdest=dest;
	int result=sort_without_reps();
	printf("%d\n",num);
	printf("Result = %d\n", result);
	for (i=0;i<num;i++) {
		printf("%d ", dest[i]);
	}
	printf("\n");
	return 0;
}