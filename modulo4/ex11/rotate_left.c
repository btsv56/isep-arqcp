#include <stdio.h>

int rotate_left(int num, int nbits) {
	/* 	First, num is shifted left nbits times. The result is then OR'd with num shifted right (32-nbits) times.
		Ex:
			nbits = 2
			num = 10011011
			num << nbits = 01101100
			num >> (32 - nbits) = 00000010
			(num << nbits)|(num >> (32 - nbits)) = 01101110
	*/
	return (num << nbits)|(num >> (32 - nbits));
}