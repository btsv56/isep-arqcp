#include <stdio.h>
#include "str_cat.h"

char str1[]="hello ", str2[]="world", *ptr1=str1, *ptr2=str2, str3[(sizeof(str1)/sizeof(str1[0])-1)+(sizeof(str2)/sizeof(str2[0])-1)]="", *ptr3=str3;

int main() {
	str_cat();
	printf("%s\n", str3);
	printf("%d\n", (sizeof(str1)/sizeof(str1[0]))+(sizeof(str2)/sizeof(str2[0])));
	printf("%d\n", (sizeof(str1)/sizeof(str1[0])));
	printf("%d\n", (sizeof(str2)/sizeof(str2[0])));
	int i=0;
	for (i=0;i<sizeof(str3)/sizeof(str3[0]);i++) {
		printf("%d ",str3[i]);
	}
	printf("\n");
	return 0;
}
