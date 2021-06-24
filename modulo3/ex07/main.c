#include <stdio.h>
#include "encrypt.h"
#include "decrypt.h"

char vec[]="Eu fui a Braga";
char* ptr1=vec;

int main() {
	int res,res2;
	res=encrypt();
	printf("String encrypted: %s\nNumero de elementos alterados: %d\n\n",vec,res);
	res2=decrypt();
	printf("String decrypted: %s\nNumero de elementos alterados: %d\n",vec,res2);
	return 0;
}
