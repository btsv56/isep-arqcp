#include <stdio.h>
#include "fs.h"
#include "fc.h"
#include "f2s.h"
#include "f2c.h"
#include "f3s.h"
#include "f3c.h"
#include "f4s.h"
#include "f4c.h"

int i=10,j=1;
/* Apresenta o resultado das 4 funções f,f2,f3 e d4 tanto criadas em c como assembly*/
int main() {
	int resC,resS;
	resS=f();
	resC=fc();
	printf("Função f\n");
	printf("Assembly: %d\nC: %d\n\n",resS,resC);
	resS=f2();
	resC=f2c();
	printf("Função f2\n");
	printf("Assembly: %d\nC: %d\n\n",resS,resC);
	resS=f3();
	resC=f3c();
	printf("Função f3\n");
	printf("Assembly: %d\nC: %d\n\n",resS,resC);
	resS=f4();
	resC=f4c();
	printf("Função f4\n");
	printf("Assembly: %d\nC: %d\n\n",resS,resC);   
	return 0;
}
