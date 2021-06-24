#include <stdio.h>
#include "str_copy_porto2.h"

char str1[]="Three vVv", str2[(sizeof(str1)/sizeof(str1[0]))]="", *ptr1=str1, *ptr2=str2;

int main() {
	str_copy_porto2();
	int i=0;
	printf("str1 : ");
	while (str1[i]!='\0') {
		printf("%c", str1[i]);
		i++;
	}
	printf("\nstr2 : ");
	i=0;
	while (str2[i]!='\0') {
		printf("%c", str2[i]);
		i++;
	}
	printf("\n");
	return 0;
}