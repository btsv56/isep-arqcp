typedef struct {
    int n_students;
    unsigned char * individual_grades;       // 4 + n_students
} group;

int approved_semester(group *g);