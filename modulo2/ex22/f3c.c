extern int i;
extern int j;
//Se i>=j, h = i * j e g = i + 1, senão h = i + j e g = i + j + 2, por fim faz g
int f3c(){
	int h,g,r;
	if (i >= j) {
		h = i * j;
		g = i + 1;
	}
	else {
		h = i + j;
		g = i + j + 2;
	}
	if(h==0) {
		return 0;
	}
	r = g / h;
	return r;
}
