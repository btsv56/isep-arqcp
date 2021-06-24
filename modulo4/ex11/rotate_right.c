#include <stdio.h>

int rotate_right(int num, int nbits) {
	/* 	First, num is shifted right nbits times. The result is then OR'd with num shifted left (32-nbits) times.
		Ex:
			nbits = 2
			num = 10011011
			num >> nbits = 00100110
			num << (32 - nbits) = 11000000
			(num >> nbits)|(num << (32 - nbits)) = 11100110
	*/
	return (num >> nbits)|(num << (32 - nbits));
}