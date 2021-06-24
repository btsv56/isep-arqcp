#include <stdio.h>

void add_byte(char x, int *vec1, int *vec2) {
	int num=*(vec1); // number of elements in vec1 (excluding first)
	int i;
	vec1++; // increments vec1
	(*vec2)=num; // places num in vec2[0]
	vec2++; // increments vec2
	int mask_byte=0b11111111; // mask for first byte in integer
	int mask_byte_inv=~mask_byte; // inverse of mask_byte (0b11111111111111111111111100000000)
	for (i=0;i<num;i++) {
		char byte=*(vec1) & mask_byte; // AND's vec1's value and mask_byte, to get first byte
		byte+=x; // adds x to first byte
		int result= (*(vec1) & mask_byte_inv) | byte; // OR's byte with the result of (*(vec1) AND mask_byte_inv), which is *vec1 with first byte deactivated
		*(vec2)= result; // places result in vec2
		vec1++; // increments both vectors
		vec2++;
	}
}