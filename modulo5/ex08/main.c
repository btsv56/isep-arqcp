#include <stdio.h>
#include "fill_s2.h"

int main() {
    short vw[3]={1, 2, 3};
    int vj=15;
    char vc[3]={48, 49, 50};
    s2 wow;
    s2 *s=&wow;
    fill_s2(s, vw, vj, vc);
    int i;
    printf("w = ");
    for (i=0;i<3;i++) {
        printf("%d ", s->w[i]);
    }
    printf("\nj = %d\nc = ", s->j);
    for (i=0;i<3;i++) {
        printf("%d ", s->c[i]);
    }
    printf("\n");
    return 0;
}