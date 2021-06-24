#include <stdio.h>
#include "odd_sum.h"

int main() {
    int vec[6] = {5, 3, 2, 3, 4, 5};
    int *vecP=vec;
    int sum=odd_sum(vecP);
    printf("%d\n", sum);
    return 0;
}
