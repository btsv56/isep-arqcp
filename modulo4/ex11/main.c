#include <stdio.h>
#include "rotate_left.h"
#include "rotate_right.h"

int main() {
	int num=2;
	int left=rotate_left(-1,10);
	int right=rotate_right(-1,10);
	printf("left = %d\nright = %d\n", left, right);
	return 0;
}