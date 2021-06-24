#include <stdio.h>
#include "upper1.h"

/*Imprime uma string com todas as letras maiusculas*/
int main() {
    printf("Insert string: \n");
    char str[50];
    scanf("%[^\n]", str);
    upper1(str);
    printf("%s\n", str);
    return 0;
}
