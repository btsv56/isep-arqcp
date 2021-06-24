#ifndef FILL_S2_H
#define FILL_S2_H

typedef struct {
    short w[3];
    int j;                  // 2*3 + (2 +) 4 + 1*3 (+ 1)
    char c[3];
} s2;

void fill_s2(s2 *s, short vw[3], int vj, char vc[3]);

#endif