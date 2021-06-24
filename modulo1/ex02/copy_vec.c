#include <stdio.h>

//Copies vec1 into vec2, n is the number of ints to copy
void copy_vec(int *vec1, int *vec2, int n) {
    int i=0;
    while (i<n) {
        vec2[i]=vec1[i]; //Non-arithmetic method
        i++;
    }
}
