#include <stdio.h>

#define ARRAYLENGTH 30 

void fill_array(int *vec) {
    int i, a;
    printf("Insert a number:\n");
    for (i=0;i<ARRAYLENGTH;i++) {
        printf(" %d: ", i+1);
        scanf("%d", &a);
        vec[i]=a;
        //printf("\n");
    }
}

int main() {
    int vec[ARRAYLENGTH];
    fill_array(vec);
    int i=0;
    while(i!=ARRAYLENGTH) {
        printf("%d ", vec[i++]);
    }
    printf("\n");
    return 0;
}
        
