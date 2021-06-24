#include <stdio.h>
#include "vec_search.h"

short vec[]={1,2,3,4,5,6};
short* ptrvec=vec;
short x=4;
int num=6;
/*Procura x num array de short ints e apresenta o endereço onde se encontra ou 0 se não existir*/
int main() {
	short* res;
	int i;
	res=vec_search();
	printf("Numero a procurar: %hd\n",x);
	printf("Vetor:");
	for(i=0;i<6;i++) {
		printf("%hd ",*(ptrvec+i));
	}
	printf("Endereço de memoria: %p\n",res);
	return 0;
}
