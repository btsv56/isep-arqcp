#include <stdio.h>
#include "average.h"

int main(){
	int v[] = {1,2};
	int r = 0,ra=0;
	r = average(v[0], v[1]);
	ra = average_array(v,2);
	printf("Average= %d\n", r);
	printf("Average array= %d\n", ra);
    g_n=2;
    g_v[0] = 5;
    g_v[1] = 4;
    g_v[2] = 3;
    g_v[3] = 2;
    g_v[4] = 1;
    printf("%d\n", g_v[0]);
    printf("Average global array= %d\n", average_global_array());
	return 0;
}
