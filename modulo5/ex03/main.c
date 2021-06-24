#include <stdio.h>
#include "fill_student.h"
/*Preenche e mostra varias estrutura Student*/
int main() {
	Student vec_std[5];
	int i;
	fill_student(vec_std,10,1,"Joao","Rua de cima");
	fill_student(vec_std+1,12,2,"Bruno","Rua de baixo");
	fill_student(vec_std+2,14,3,"Pedro","Rua do lado");
	fill_student(vec_std+3,23,4,"Bruno","Rua do lado");
	fill_student(vec_std+4,34,5,"Ronaldo","Rua de cima");
	for(i=0;i<5;i++) {
		printf("Idade: %d\nNumero: %d\nNome: %s\nMorada: %s\n\n",(vec_std+i)->age,(vec_std+i)->number,(vec_std+i)->name,(vec_std+i)->address);
	}
	return 0;
}
