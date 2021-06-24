/*Verifica se uma string recebida por parametro é palindrome ou não*/
int palindrome(char *str) {
	int i=0,j=0;
	while(*(str+i)!='\0') {
		i++;
	}
	if(i==0) {
		return 0;
	}
	while(j<i) {
		while((*(str + i) < 'A' || *(str + i) > 'Z') &&( *(str + i) < 'a' || *(str + i) > 'z')) {
			i--;
		}
		while((*(str + j) < 'A' || *(str + j) > 'Z' )&& (*(str + j) < 'a' || *(str + j) > 'z')) {
			j++;
		}
		if(*(str + i) != *(str + j) && *(str + i) != *(str + j) + 32 && *(str + i) != *(str + j) - 32) {
			return 0;
		}
		i--;
		j++;
	}
	return 1;
}
		
