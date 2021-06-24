#include <stdlib.h>
#include <stdio.h>

int** new_matrix(int lines,int columns) {
	int **m;
	int i;
	m=(int**) malloc(lines*sizeof(int));
	if(m==NULL) {
		printf("Error reserving memory.\n");exit(1);
	}
	for(i=0;i<lines;i++) {
		*(m+i)=(int*) malloc(columns*sizeof(int));
		if(*(m+i) == NULL ){
			printf ("Error reserving memory.\n" ); exit (1);
		}

	}
	return m;
}
