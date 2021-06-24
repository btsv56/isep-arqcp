extern int i;
extern int j;
//Se i≃j realiza a operação i-j+1,senão realiza a operação i+j-1	
int fc(){
	int h;
	if (i == j) {
		h =i-j+1;
	} else {
		h =i+j-1;
	}
	return h;
}
	
	
