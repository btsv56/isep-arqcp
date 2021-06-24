#include <stdio.h>
#include "find_matrix.h"
#include "new_matrix.h"

int main() {
    int i,j;
    int **m=new_matrix(5,5);
    for(i=0;i<5;i++) {
		for(j=0;j<5;j++) {
			scanf("%d",(*(m+i)+j));
		}
	}
    int result = find_matrix(m, 5, 5, 5);
    printf("result = %d\n", result);
    return 0;
}