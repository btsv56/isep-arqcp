#ifndef FILL_S1_H
#define FILL_S1_H

typedef struct {
    int i;
    char c;                     // 4 + 1 + (3 +) 4 + 1 (+ 3)
    int j;
    char d;
} s1;

void fill_s1(s1 *s, int vi, char vc, int vj, char vd);

#endif