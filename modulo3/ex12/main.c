#include <stdio.h>
#include "vec_zero.h"

short vec[]={1, 100, 2, 105, 99}, *ptrvec=vec;
int num=sizeof(vec)/sizeof(vec[0]);

int main() {
	int changes=vec_zero();
	int i=0;
	for (i=0;i<num;i++) {
		printf("%d ", vec[i]);
	}
	printf("\nChanges = %d\n", changes);
	return 0;
}