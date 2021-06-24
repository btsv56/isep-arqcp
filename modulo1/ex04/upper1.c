#include <stdio.h>

//Capitalizes every word in array
void upper1(char *str) {
    int c = 0;
    while (str[c] != '\0') {
      if (str[c] >= 'a' && str[c] <= 'z') {
         str[c] = str[c] - 32; //Capitalized letter is -32 from lower case in ASCII code
      }
      c++;
    }
}
