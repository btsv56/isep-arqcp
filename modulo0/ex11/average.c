int g_n=0;
int g_v[100];

int average(int n1, int n2){
	return (n1+n2)/2;
}

int average_array(int v[],int n) {
	if(n!=0) {
		int i=0,total=0;
		for(i=0;i<n;i++) {
			total=total+v[i];
		}
		total=total/n;
		return total;
	}else{
		return 0;
	}	
}

int average_global_array() {
    int i=0,total=0;
    for(i=0;i<g_n;i++) {
        total=total+g_v[i];
    }
    total=total/g_n;
    return total;
}
