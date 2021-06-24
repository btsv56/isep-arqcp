#include <stdio.h>
#include "test_equal.h"
/*Vericica se duas strings são iguais*/
int main() {
	int res;
	char string1[]="Eu vou a Lisboa";
	char string2[]="Eu vou a Lisboa";
	res=test_equal(string1,string2);
	printf("String 1: |%s|\n",string1);
	printf("String 2: |%s|\n",string2);
	printf("Strings iguais?: ");
	if(res ==1) {
		printf("Sim\n");
	}else{
		printf("Não\n");
	}
	return 0;
}
