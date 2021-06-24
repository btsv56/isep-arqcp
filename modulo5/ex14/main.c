#include <stdio.h>
#include <stdlib.h>
#include "add_matrixes.h"
#include "new_matrix.h"

int main() {
    int i, j;
    int **a=new_matrix(3,3);
    int **b=new_matrix(3,3);
    for(i=0;i<3;i++) {
		for(j=0;j<3;j++) {
			scanf("%d",(*(a+i)+j));
		}
	}
    for(i=0;i<3;i++) {
		for(j=0;j<3;j++) {
			scanf("%d",(*(b+i)+j));
		}
	}
    int **result=add_matrixes(a, b, 3, 3);
    for (i=0;i<3;i++) {
        for (j=0;j<3;j++) {
            printf("%d ", *(*(result+i)+j));
        }
        printf("\n");
    }
    free(result);
    return 0;
}