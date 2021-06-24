#include <stdio.h>
#include <stdlib.h>
#include "new_matrix.h"
#include "count_odd_matrix.h"

int main() {
	int lines,columns,i,j,result;
	int **m;
	printf("Indique o numero de linhas e o numero de colunas da nova matriz:\n");
	scanf("%d",&lines);
	scanf("%d",&columns);
	m=new_matrix(lines,columns);
	for(i=0;i<lines;i++) {
		for(j=0;j<columns;j++) {
			scanf("%d",(*(m+i)+j));
		}
	}
	result=count_odd_matrix(m,lines,columns);
	printf("Numero de numeros impares na matriz: %d\n",result);
	free(m);
	return 0;
}
