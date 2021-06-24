#include <stdio.h>
#include "largest_number.h"

int main() {
    char str[20];
    printf("Insert a number: ");
    scanf("%[^\n]", str);
    int lar_num=largest_number(str);
    if (lar_num==0) {
        printf("Just zeroes.\n");
    } else if (lar_num==1) {
        printf("Binary.\n");
    } else if (lar_num>=2 && lar_num<8) {
        printf("Octal.\n");
    } else if (lar_num>=8 && lar_num<10) {
        printf("Decimal.\n");
    } else if (lar_num>=17 && lar_num<23) {
        printf("Hexadecimal.\n");
    } else {
        printf("None.\n");
    }
    return 0;
}
                
    
