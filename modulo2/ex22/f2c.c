extern int i;
extern int j;
//Se i>j realiza a operação i-1,senão realiza a operação j+1, por fim multiplica i por j
int f2c(){
	int h,ia,ja;
	ia=i;
	ja=j;
	if (i > j) {
		ia = i - 1;
	}else{
		ja = j + 1;
	}
	h = ja * ia;
	return h;
}
