#include <stdio.h>

//Calculates x to the power of y and the result is placed at x's address
void power_ref(int *x, int y) {
    int i=1, result=1;
    while (i<=y) {
            result*=*x; //multiplies result with x's value
            i++;
    }
    if (y==0) {
        *x=1; //if y is 0, result is 1
    } else if (y<0) {
		*x=0;
	} else {
        *x=result;
    }
}
