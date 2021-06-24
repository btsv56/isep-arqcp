#include <stdio.h>

//Capitalizes every first letter of every word
void capitalize (char *str) {
    if (*str >= 'a' && *str <= 'z') { //If char is a letter and not a number, for example (beginning of sentence)
         *str -= 32; //Capitalized letter is -32 in ASCII code
    }
    str++;
    while (*str != '\0') {
      if (*str >= 'a' && *str <= 'z' && *(str-1)==' ') { //If char is a letter and not a number, for example (checks for spaces)
         *str -= 32;
      }
      str++;
    }
}
