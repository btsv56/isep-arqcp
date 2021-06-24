#include <math.h>
#include <stdio.h>

int integer_part(char *str) {
	int num=0,c=0,i=0,ascii=0,n=0;
    while (str[c]!=',') {
        c++;
    }
    for(i=0;str[i]!=',';i++) {
		ascii=str[i];
		n=ascii-48;
		num=num + n*(int)pow(10,--c);
	}
	return num;
}

int fractional_part(char *str) {
	int num=0,c1=0,c2=0,i=0,ascii=0,dif=0;
    while (str[c1]!=',') {
        c1++;
    }
    c1++;
    c2=c1;
    while(str[c2]!='\0'){
		c2++;
	}
	dif=c2-c1;
    for(i=c1;str[i]!='\0';i++) {
		ascii=str[i];
		num=num + (ascii-48)*(int)pow(10,--dif);
	}
	return num;
}	 
