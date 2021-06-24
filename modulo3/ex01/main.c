#include <stdio.h>
#include "zero_count.h"

char vec[]="Hello 0 World";
char* ptr1=vec;
/*Apresenta o numero de '0' na string Hello 0 World*/
int main() {
	int res;
	res=zero_count();
	printf("Vetor: %s",vec);
	printf("\nNumero de ocorrencias: %d\n", res);
	return 0;
}
