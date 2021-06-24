#ifndef LOCATE_GREATER_H
#define LOCATE_GREATER_H

typedef struct {
    char age;
    short number;
    int grades[10];                       // 1+(1+)2+40+80+120 = 244 bytes
    char name[80];
    char address[120];
} Student;

int locate_greater(Student*s, int minimum, int *greater_grades);
#endif