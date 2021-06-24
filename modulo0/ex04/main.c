#include <stdio.h>
#include "count.h"

int main() {
	
	int v[]={1,1,2,3,4,1};
	int c=count(v,6,1);
	printf("Contagem: %d\n",c);
	return 0;
}
