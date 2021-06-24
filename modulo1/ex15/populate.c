#include <stdlib.h> 

/*Preenche um vetor valores aleatórios entre 0 e o limite recebido*/
void populate(int *vec,int num, int limit) {
	int i;
	for (i=0;i<num;i++) {
		*(vec+i)=rand()%limit;
	}
}
