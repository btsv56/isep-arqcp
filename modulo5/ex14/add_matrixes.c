#include <stdlib.h>

int **add_matrixes(int **a, int **b, int y, int k) {
    int **result=(int **) malloc(y * sizeof(int*));
    int i,j;
    for(i=0; i<y; i++){
        result[i] = (int *) malloc(k * sizeof(int));
    }
    for (i=0;i<y;i++) {
        for (j=0;j<k;j++) {
            result[i][j]=*(*(a+i)+j)+*(*(b+i)+j);
        }
    }
    return result;
}