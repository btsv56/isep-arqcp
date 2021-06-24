#include <stdio.h>
#include "compress_shorts.h"

int main() {
    int n_shorts=6;
    short shorts[]= {4, 1, 6, 2, 5, 3};
    int integers[n_shorts/2];
    compress_shorts(shorts, n_shorts, integers);
    int i;
    for (i=0;i<n_shorts/2;i++) {
        printf("%x ", integers[i]);
    }
    printf("\n");
    return 0;
}
    
