#ifndef UPDATE_GRADES_H
#define UPDATE_GRADES_H

typedef struct {
    char age;
    short number;
    int grades[10];                       // 1+(1+)2+40+80+120 = 244 bytes
    char name[80];
    char address[120];
} Student;

void update_grades(Student *s, int *new_grades);
#endif