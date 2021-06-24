#include "fill_student.h"
#include <string.h>
// Preenche uma estrutura Student com valores recebidos por parametro
void fill_student(Student *s, char age, short number, char *name, char *address) {
	s->age = age; //atribui a idade
	s->number= number; // atribui o numero de estudante
	strcpy(s->name,name); // atribui o nome
	strcpy(s->address,address); //atribui a morada
}
	
