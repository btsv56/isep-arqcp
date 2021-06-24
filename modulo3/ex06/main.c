#include <stdio.h>
#include "encrypt.h"

char vec[]="Eu fui a Braga";
char* ptr1=vec;
/*Apresenta a string e o numero de elementos alterados quando se adiciona 2 a todos os carecteres que não sejam 'a' ou ' ' de uma string	*/
int main() {
	int res;
	printf("String original: %s\n",vec);
	res=encrypt();
	printf("String alterada: %s\nNumero de elementos alterados: %d\n",vec,res);
	return 0;
}
