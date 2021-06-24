#include <stdio.h>
#include "string_to_int.h"

#define MAX_NUM_LENGTH 30

int main() {
    char num1[MAX_NUM_LENGTH], num2[MAX_NUM_LENGTH];
    printf("Insert two numbers: ");
    scanf("%s", num1);
    scanf("%s", num2);
    int num3=string_to_int(num1);
    int num4=string_to_int(num2);
    printf("%d %d\n", num3, num4);
    return 0;
}
