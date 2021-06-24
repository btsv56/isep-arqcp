#include <stdio.h>
#include "populate.h"
#include "check.h"

/*Apresenta o numero de sets que satisfazem a condição vi<vi+1<vi+2 num vetor com 100 elementos aleatórios*/
void inc_nsets() {
	int vec[100],i;
	char cont;
	populate(vec,100,20);
	for(i=0;i<100;i++) {
		if(check(*(vec+i),*(vec+i+1),*(vec+i+2))) {
			cont++;
		}
	}
	printf("Numero de sets que satisfazem a condição: %d\n",cont);
}
