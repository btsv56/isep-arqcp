#include <stdio.h>
#include "frequencies.h"

int main() {
    //float grades[] = {8.23, 12.25, 16.45, 12.45, 10.05, 6.45, 14.45, 0.0, 12.67, 16.23, 18.75};
    //float grades[] = {};
    //float grades[] = {1.5};
    float grades[] = {2,0,1};
    //float grades[] = {10,20,3};
    //float grades[] = {20,10,10,10,10,10,10,10,10};
    int freq[21]= {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    int n = sizeof(grades) / sizeof(grades[0]);
    frequencies(grades, n, freq);
    int i=0;
    while (i<21) {
        printf("%d ", freq[i++]);
    }
    printf("\n");
    int size=sizeof(grades)/sizeof(grades[0]);
    printf("size=%d\n", size);
    return 0;
}
