//Conta o numero de bits a 0 de um inteiro	
int count_bits_zero(int x) {
	int i,mask=1,cont=0;
	for(i=0;i<32;i++) {
		if((x&mask)==0) {
			cont++;
		}
		x=x>>1;
	}
	return cont;
}
