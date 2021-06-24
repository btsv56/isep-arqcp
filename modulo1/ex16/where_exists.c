#include <stdio.h>

//Finds a substring in a string. Returns a pointer that starts where the first ocurrence of the substring is
char* where_exists(char*  str1,  char* str2) {
    int i=0;
    int j=0;
    char flag=0;
    if (*str2=='\0' || *str1=='\0') { 
		return NULL; 
	}
    while (*(str2+i)!='\0') { //While loop goes through str1
		j=0;
		while (*(str1+j)!='\0') {
			if (*(str2+i+j)!=*(str1+j)) {
				flag=1;
			}
			j++;
		}
		if (flag==0) {
			return str2+i;
		}
		flag=0;
		i++;
    }
    return NULL; //Substring hasn't been found
}
