#include <stdio.h>
#include "new_str.h"

int main() {
	char* res;
	res=new_str("Nova String");
	printf("String: %s\n",res);
	return 0;
}
