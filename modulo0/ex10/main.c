#include <stdio.h>
#include "average.h"

int main(){
	int v[] = {1,2};
	int r = 0,ra=0;
	r = average(v[0], v[1]);
	ra = average_array(v,2);
	printf("average =%d\n", r);
	printf("average array=%d\n", ra);
	return 0;
}
