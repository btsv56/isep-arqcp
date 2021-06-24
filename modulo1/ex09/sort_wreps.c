/*Preenche um array a partir do primeiro, com os elementos do primeiro
 * sem os repetir e de forma ascendente, recebendo esses dois vetores e 
 * o numero de elementos de ambos*/  
int sort_without_reps(int *src,int n,int *dest) {
	int i,j,m=0,aux;
	char bol=0;
	for(i=0;i<n;i++) {
		for(j=0;j<m;j++) {
			if(*(src+i)==*(dest+j)) {
				bol=1;
			}
		}
		if(bol==0) {
			*(dest+m)=*(src+i);
			m++;
		}
		bol=0;
	}
	for(i=0;i<m-1;i++) {
		for(j=i+1;j<m;j++) {
			if(*(dest+i)>*(dest+j)) {
				aux=*(dest+i);
				*(dest+i)=*(dest+j);
				*(dest+j)=aux;
			}
		}
	}
	return m;
}
