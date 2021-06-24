#include <stdio.h>

int join_bits(int a, int b, int pos) {
	int max_int=0-1; // 0b11111111111111111111111111111111
	int mask2; // mask for b
	if (pos==31) {
		mask2=0; // if pos makes it so the operation below does max_int << 32, makes mask2 = 0
	} else {
		mask2=max_int << (pos+1); // shifts mask2 pos+1 times
	}
	int mask1=~mask2; // reversed mask2
	int masked1=(a & mask1); // gets last pos bits of a
	int masked2=(b & mask2); // gets last 31-pos bits of b
	return masked1 | masked2; // returns the amalgamation of both halves
}