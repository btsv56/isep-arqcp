extern int i;
extern int j;
//Se i+j<10, realiza a operação 4*i*i, senão faz j*j/3	
int f4c(){
	int h;
	if (i + j < 10) {
		h = 4 * i * i;
	}
	else{
		h = j * j / 3;
	}
	return h;
}
