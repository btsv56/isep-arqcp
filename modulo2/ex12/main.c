#include <stdio.h>
#include "isMultiple.h"

int A=4,B=2;
/* Apresenta se A=4 é multiplo de B=2*/
int main() {
	char res;
	res=isMultiple();
	printf("É multiplo?");
	if(res==1) {
		printf(" Verdadeiro\n");
	}else{
		printf(" Falso\n");
	}
	return 0;
}
	
