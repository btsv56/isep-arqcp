#include <stdio.h>
#include "sub_smaller.h"
/*Calcula a soma de dois numeros recebidos por parametros e coloca o menor dos dois no valor do endereço apontado por smaller*/
int main() {
	int res,smaller;
	int* ptr_smaller=&smaller;
	res=sum_smaller(105,5,ptr_smaller);
	printf("Soma: %d\nValor menor: %d\n",res,smaller);
	return 0;
}
