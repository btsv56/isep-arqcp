/* Ordena um vetor de inteiros por ordem crescente
 * recebendo um vetor vec e o numero de elementos do vetor vec, n */
void array_sort2(int *vec,int n) {
	int i,j,aux;
	for(i=0;i<n-1;i++) {
		for(j=i+1;j<n;j++) {
			if(*(vec+i)>*(vec+j)) {
				aux=*(vec+i);
				*(vec+i)=*(vec+j);
				*(vec+j)=aux;
			}
		}
	}
}
