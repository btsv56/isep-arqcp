#include <stdio.h>
#include "capitalize.h"

int main() {
    printf("Insert string: \n");
    char str[50];
    scanf("%[^\n]", str);
    char *strP=NULL;
    strP=str;
    capitalize(strP);
    printf("%s\n", str);
    return 0;
}
