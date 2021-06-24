#include <stdio.h>
#include "check_num.h"

int num=-1;
/*Apresenta 1, se num é par e negativo
 2, se num é impar e negativo
 3, se num é par e positivo
 4, se num é impar e positivo*/
int main() {
	char res;
	res=check_num();
	printf("%d\n", res);
	return 0;
}
