#include <stdio.h>
#include <math.h>
#include "string_to_int.h"

int main() {
	char v[]={'1','2','3','4','5','\0'};
	int n;
	n=string_to_int(v);
	printf("Número: %d\n",n);
	return 0;
}
