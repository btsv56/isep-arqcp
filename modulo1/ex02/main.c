#include <stdio.h>
#include "copy_vec.h"

int main() {
    int vec1[5] = {1, 2, 3, 4, 5};
    int vec2[5] = {5, 4, 3, 2, 1};
    copy_vec(vec1, vec2, 3);
    int i=0;
    while (i<5) {
        printf("%d ", vec2[i++]);
    }
    printf("\n");
    return 0;
}
