/* Encontra o numero de ocorrências de um caracter c numa string e guarda num 
 * novo vetor as posições onde c se encontra na string*/
int where_is(char *str,char c,int *p) {
	int i=0,j=0;
	while(*(str+i)!='\0') {
		if(*(str+i)==c) {
			*(p+j)=i;
			j++;
		}
		i++;
	}
	return j;
}
