#include <stdio.h>
#include "sum_even.h"

/*Utiliza o metodo sum_even para imprimir a soma dos valores pares de um vetor*/
int main() {
	int vec[]={1,2,3,4};
	int num=4;
	int soma;
	soma=sum_even(vec,num);
	printf("Soma dos numeros pares: %d\n", soma);
	return 0;
}
