//Inverte os 4 bits mais signficativos do terceiro byte de um numero mas apenas quando esses 4 bits são maiores que 7	
void changes(int *ptr) {
	int mask1= 0b00000000111100000000000000000000,mask2=0b11111111000011111111111111111111;
	mask1 = *ptr & mask1;
	mask1 = (unsigned) mask1 >> 20;
	if(mask1 > 7) {
		mask1= ~ mask1;
		mask1 = mask1 << 28;
		mask1 = (unsigned) mask1 >> 8;
		*ptr= *ptr & mask2;
		*ptr= *ptr | mask1;
	}
}
