#include <stdio.h>
#include "needed_time.h"

short current=-5, desired=-15;

int main() {
	int secs=needed_time();
	printf("%d\n", secs);
	return 0;
}
