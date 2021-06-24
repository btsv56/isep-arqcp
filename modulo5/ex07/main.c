#include <stdio.h>
#include "fill_s1.h"

int main() {
    int vi=5;
    char vc=52;
    int vj=2;
    char vd=49;
    s1 si;
    s1 *s=&si;
    fill_s1(s, vi, vc, vj, vd);
    printf("i = %d\nc = %c\nj = %d\nd = %c\n", s->i, s->c, s->j, s->d);
    return 0;
}