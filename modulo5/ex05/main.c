#include <stdio.h>
#include <string.h>
#include "update_grades.h"

void fill_student(Student *s, char age, short number, char *name, char *address) {
    s->age=age;
    s->number=number;
    strcpy(s->name, name);
    strcpy(s->address, address);
}

int main( void ){
    Student array[5];
    Student *s;
    s=&array[0];
    fill_student(s, 19, 1, "João Leal", "Baltar");
    s=&array[1];
    fill_student(s, 19, 2, "Bruno Veiga", "Porto");
    s=&array[2];
    fill_student(s, 30, 3, "Pedro Brandão", "Viseu");
    s=&array[3];
    fill_student(s, 32, 4, "Cristiano Ronaldo", "Madeira");
    s=&array[4];
    fill_student(s, 48, 5, "Big Boss", "Outer Heaven");
    int i;
    for (i=0;i<5;i++) {
        s=&array[i];
        printf("%c, %d, %s, %s\n", s->age, s->number, s->name, s->address);
    }
    int new_grades[10]={20,20,20,20,12,20,20,20,20,20};
    int *new_grades_vec=new_grades;
    s=&array[0];
    update_grades(s, new_grades_vec);
    for (i=0;i<10;i++) {
        printf("%d ", s->grades[i]);
    }
    printf("\n");
    return 0;
}