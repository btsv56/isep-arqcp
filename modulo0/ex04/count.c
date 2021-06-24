#include <stdio.h>

int count(int *vec, int n, int value) {
	int c=0,i=0;
	for (i=0;i<n;i++) {
		if(vec[i]== value) {
			c++;
		}
	}
	return c;
}
