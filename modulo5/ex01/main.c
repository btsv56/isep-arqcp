#include <stdio.h>

union union_u1{
	char vec[32];
	float a;
	int b;
} u;

struct struct_s1{
	char vec[32];
	float a;
	int b;
} s;

int main() {
	printf("%d\n", sizeof(u)); //O resultado será igual ao tamanho do maior tipo de dados por se tratar de um union, 32
	printf("%d\n", sizeof(s)); //O resultado deverá ser	igual a 40, uma vez que se trata de uma estrutura e tem se em consideração os
							   //espaços existentes entre cada um dos tipos de dados na estrutura
	return 0;
}
