#include <stdio.h>
#include "string_to_integer.h"

int main() {
	//char v[]={'1','2','3','4','9',',','2','3','1'};
    char v[]="12345,23";
	int p1=0,p2=0;
	p1=integer_part(v);
	p2=fractional_part(v);
	printf("Integer part: %d\nFractional part: %d\n",p1,p2);
	return 0;
}
