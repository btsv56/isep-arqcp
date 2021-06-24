#include <stdio.h>
#include "power_ref.h"

int main() {
    int num=-2, *x, y=3;
    x=&num;
    power_ref(x, y);
    printf("%d\n", num);
    return 0;
}
