#include <stdio.h>
#include <stdlib.h>
#include "approved_semester.h"

group * makeGroup(int n) {
    group *result= (group *) malloc(sizeof(group));
    if (result==NULL) {
        exit(0);
    }
    result->n_students=n;
    result->individual_grades = (unsigned char *) malloc(n*sizeof(char));
    if (result->individual_grades==NULL) {
        exit(0);
    }
    return result;
}

int main() {
    group *g=makeGroup(6);
    printf("Students: %d\n", g->n_students);
    unsigned char v[]={0b1111,0b11111,0b10000000,0b11111000,0b11110000,0b11111111};
    g->individual_grades=v;
    printf("Grades : %d\n", *(g->individual_grades));
    printf("Memory slot for grades : %p\n", g->individual_grades);
    int result=approved_semester(g);
    printf("Result: %d\n", result);
    //free(g->individual_grades);
    free(g);
    return 0;
}