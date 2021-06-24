#include <stdio.h>
#include <stdlib.h>
#include "new_matrix.h"

int main() {
	int lines,columns;
	int **m;
	printf("Indique o numero de linhas e o numero de colunas da nova matriz:\n");
	scanf("%d",&lines);
	scanf("%d",&columns);
	m=new_matrix(lines,columns);
	printf("Endereço memoria da matriz: %p\n",m);
	free(m);
	return 0;
}
