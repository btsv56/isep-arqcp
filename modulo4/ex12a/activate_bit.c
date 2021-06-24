//Coloca o bit pos a 1 no valor inteiro apontado pelo endreço recebido por parametro retornando 1 se o bit pos foi alterado
int activate_bit(int *ptr,int pos) {
	if(pos<0 || pos>31) {
		return 0;
	}
	int mask=1,num;
	mask= mask << pos;
	num= (mask & *ptr);
	if(num != 0) {
		return 0;
	}
	*ptr=(mask | *ptr);
	return 1;
}
	
