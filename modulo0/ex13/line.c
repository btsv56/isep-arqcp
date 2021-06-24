#include <stdio.h>

void line(int x,int y) {
	int i=0;
	for(i=0;i<y;i++) {
		int mult=x*(i+1);
		printf("%d ",mult);
	}
	printf("\n");
}
