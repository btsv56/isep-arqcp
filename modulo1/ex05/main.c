#include <stdio.h>
#include "upper2.h"

/*Imprime uma string com todas as letras maiusculas*/
int main() {
    printf("Insert string: \n");
    char str[50];
    scanf("%[^\n]", str);
    char *strP=NULL;
    strP=str;
    upper2(strP);
    printf("%s\n", str);
    return 0;
} 
