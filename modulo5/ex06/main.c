#include <stdio.h>
#include <string.h>
#include "locate_greater.h"
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
    s=&array[0];
    int grades[10]={1,2,3,4,5,6,7,8,9,10};
    update_grades(s, grades);
    for (i=0;i<10;i++) {
        printf("%d ", s->grades[i]);
    }
    int cool_grades[10]={-1,-1,-1,-1,-1,-1,-1,-1,-1,-1};
    int changes=locate_greater(s, 5, cool_grades);
    printf("\nChanges = %d\n", changes);
    for (i=0;i<10;i++) {
        if (cool_grades[i]!=-1) {
            printf("%d ", cool_grades[i]);
        }
    }
    printf("\n");
    return 0;
}