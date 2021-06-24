#include <stdio.h>

int sum(int a,int b) {
	return a+b;
}

int main() {
	int r=11;
	int i=0;
	int v[]={10,2,3,4};
	while(r>=10) {
		r=sum(v[i],v[i+1]);
		i=i+2;
	}
	printf("Result=%d\n",r);

	return 0;
}
