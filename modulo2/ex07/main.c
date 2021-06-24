#include <stdio.h>
#include "swap_bytes.h"
#include "concatBytes.h"
#include "crossSumBytes.h"

short s1=1,s2=2;
/*Apresenta os bytes de um short trocados, a contatenação de dois char e soma de dois short de forma cruzada*/
int main() {
	short sh2=swapBytes();
	printf("Swapped number: %hd\n", sh2);
	short res;
	res=concatBytes();
	printf("Concatenaded Bytes: %hd\n", res);
	res=crossSumBytes();
	printf("CrossSumBytes result: %hd\n",res);
	return 0;
}
