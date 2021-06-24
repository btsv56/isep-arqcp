//Calcula a soma de todos os inteiros de um vetor que são multiplos do segundo byte de x	
int sum_multiples_x(char *vec,int x) {
	int resto,soma=0,i=0;
	x= x << 16;
	x= (unsigned) x >> 24;;
	if(x==0) {
		return 0;
	}
	while(*(vec+i)!= 0) {
		resto= *(vec+i) % x;
		if(resto ==0 ) {
			soma+= *(vec+i);
		}
		i++;
	}
	return soma;
}
		
