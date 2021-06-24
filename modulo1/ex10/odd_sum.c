#include <stdio.h>

//Sums every odd number in array
int odd_sum(int *p) {
    int num_num=*p, i, sum=0; //num_num is the first number of the array, which indicates how many numbers left
    p++;
    for (i=0;i<num_num;i++) {
        if (*p%2!=0) {
            sum+=*p;
        }
        p++;
    }
    return sum;
}
        
