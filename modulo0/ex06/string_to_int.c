#include <stdio.h>
#include <math.h>

int string_to_int(char *str) {
	int num,count=0,i,n=0;
    while (str[count]!='\0') {
        count++;
    }
	for (i=0;str[i]!='\0';i++) {
        int ascii=str[i];
        num=ascii-48;
        n=n+num*(int)pow(10, --count);
    }
	return n;
} 
