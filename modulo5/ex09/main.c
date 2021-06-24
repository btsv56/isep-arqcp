#include <stdio.h>
#include "fun.h"

int main() {
	structB strB;
	structB* ptr= &strB;
	ptr->a.x= 10;
	ptr->z=1;
	ptr->b= &ptr->a;
	int res;
	res=fun1(ptr);
	printf("Fun1: %hd\n", res);
	res=fun2(ptr);
	printf("Fun2: %hd\n", res);
	short* resPtr=fun3(ptr);
	printf("Fun3: %p\n", resPtr);
	res=fun4(ptr);
	printf("Fun4: %hd\n", res);
	return 0;
}
