#include <stdio.h>
#include "palindrome.h"

/*Mostra se uma string é uma palindrome ou não*/
int main() {
	int bol;
	char str[]="Gateman sees name, garageman sees name tag";
	bol=palindrome(str);
	if(bol==1) {
		printf("%s é palindrome\n",str);
	}else {
		printf("%s não é palindrome\n",str);
	}
	return 0;
}
