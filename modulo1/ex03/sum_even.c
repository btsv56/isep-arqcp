/* Soma todos os valores pares de um vetor recebido por parametro
 * *p - endereço do vetor 
 * num - numero de elementos do vetor*/
int sum_even(int *p,int num) {
	int i,sum=0;
	int* numPtr=&num;
	for(i=0;i<*numPtr;i++) {
		if(*(p+i)%2==0) {
			sum=sum+*(p+i);
		}
	}
	return sum;
}	
