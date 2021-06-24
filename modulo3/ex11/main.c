#include <stdio.h>
#include "vec_greater20.h"

long long int vec[]={1,100,1001};
long long int* ptrvec=vec;
int num=3;
/*Apresenta quantos numeros num array de long long ints são maiores que 20*/
int main() {
	int res,i;
	res=vec_greater20();
	printf("Vetor:");
	for(i=0;i<3;i++) {
		printf("%lld ",*(ptrvec+i));
	}
	printf("Contagem: %d\n",res);
	return 0;
}
