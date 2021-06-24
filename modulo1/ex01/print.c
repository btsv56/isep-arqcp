#include <stdio.h>

/*Imprime diversas variaveis*/
void print() {
	int x=5;
	int* xPtr=&x;
	float y=*xPtr+1;
	int vec[] ={10,11,12,13};
	printf("Value of x: %d\nValue of y: %f\n",x,y);
	printf("Address of x: %p\nAddress of xptr: %p\n",&x,&xPtr);
	printf("Value pointed by xptr: %d\n", *xPtr);
	printf("Address of vec: %p\n", vec);
	short i;
	for(i=0;i<4;i++) {
		printf("Value of vec[%d]: %d\n",i,*(vec+i));
	}
	for(i=0;i<4;i++) {
		printf("Value of the address of vec[%d]: %p\n",i,vec+i);
	}
}
