#include <stdio.h>

#define SPACE_ASCII 32

int count_words(char *str) {
    int count=1, i;
    if (str[0]!='\0') {
        for (i=0;str[i]!='\0';i++) {
            int ascii=str[i];
            if (ascii==SPACE_ASCII && str[i+1]!='\0' && str[i-1]!=SPACE_ASCII) {
                count++;
            }
        }
        return count;
    } else {
        return 0;
    }
}
    
