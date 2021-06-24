typedef union {
	int a;
	char b;
	short c;
	long int d;
}unionB;

typedef struct {
	short int a[3];  //6	
	char b;			 //8 	
	long long int c; //16
	int d;			 //20	
	unionB ub;		 //24
	char e;			 //28
}structA;

char return_unionB_b(structA **matrix, int i, int j);
