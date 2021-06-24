
typedef struct {
	short x;
	int y;
} structA;

typedef struct {
	structA a; //0
	structA *b; //8
	int x; //12
	char c;	//16
	int y; //20
	char e[3]; //24
	short z; //28
} structB;


short fun1(structB *s);
short fun2(structB *s);
short* fun3(structB *s);
short fun4(structB *s);
