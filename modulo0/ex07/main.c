#include <stdio.h>
#include "count_words.h"

int main() {
    char str1[50], str2[50], str3[50];
    printf("Insert first sentence:\n");
    scanf("%[^\n]", str1);
    while ((getchar()) != '\n');
    printf("Number of words: %d\n", count_words(str1));
    printf("\nSecond sentence:\n");
    scanf("%[^\n]", str2);
    printf("Number of words: %d\n", count_words(str2));
    while ((getchar()) != '\n');
    printf("\nThird sentence:\n");
    scanf("%[^\n]", str3);
    printf("\nNumber of words: %d\n", count_words(str3));
    return 0;
}
    
