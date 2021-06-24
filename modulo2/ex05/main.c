#include <stdio.h>
#include "swapBytes.h"

int s=3;

int main() {
	//s1=3;
	short sh2=swapBytes();
	printf("Swapped number: %hd\n", sh2);
	return 0;
}
