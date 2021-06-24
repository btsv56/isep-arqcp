#include <string.h>
#include <stdlib.h>

char *new_str(char str[80]) {
	int num=strlen(str);
	char* novaStr= NULL;
	novaStr=malloc(num*sizeof(char)+1);
	strcpy(novaStr,str);
	return novaStr;
}
