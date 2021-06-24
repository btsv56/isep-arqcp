#include "return_unionB_b.h"
#include <stdio.h>
#include <stdlib.h>

int main() {
	structA **m;
	int i,j;
	m=(structA **)malloc(16);
	if(m==NULL) {
		printf("Error reserving memory\n");exit(1);
	}
	for(i=0;i<4;i++) {
		*(m+i)=(structA *) malloc(3*32);
		if(*(m+i) == NULL ){
			printf (" Error reserving memory .\n" ); exit (1);
		}

	}
	for (i=0;i<4;i++) {
		for (j=0;j<3;j++) {
			m[i][j].ub.b=i+j;
		}
	} 
	char res= return_unionB_b(m,2,2);
	printf("Conteudo: %d\n",res);
	return 0;
}
