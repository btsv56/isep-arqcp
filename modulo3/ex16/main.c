#include <stdio.h>
#include "swap.h"

char vec1[]="12345", vec2[]="67890", *ptr1=vec1, *ptr2=vec2;
int num=sizeof(vec1)/sizeof(vec1[0])-1;

int main() {
	swap();
	int i=0;
	printf("vec1 = ");
	while (vec1[i]!='\0') {
		printf("%c ", vec1[i]);
		i++;
	}
	i=0;
	printf("\nvec2 = ");
	while (vec2[i]!='\0') {
		printf("%c ", vec2[i]);
		i++;
	}
	printf("\n");
	return 0;
}