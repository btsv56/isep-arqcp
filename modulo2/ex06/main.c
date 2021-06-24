#include <stdio.h>
#include "swap_bytes.h"
#include "concatBytes.h"

char byte1=2,byte2=2;
/*Apresenta os bytes de um short trocados e a contatenação de dois char*/
int main() {
	short sh2=swapBytes();
	printf("Swapped number: %hd\n", sh2);
	short res;
	res=concatBytes();
	printf("Concatenaded short: %hd\n", res);
	return 0;
}
