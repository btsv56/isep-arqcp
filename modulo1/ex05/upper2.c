/*Transforma as letras minisculas numa string para letras maiusculas*/
void upper2(char *str) {
    while (*str != '\0') {
      if (*str >= 'a' && *str <= 'z') {
         *str -= 32;
      }
      str++;
    }
}
