//Estrutura student
typedef struct {
	char age;
	short number;
	int grades[10];
	char name[80];
	char address[120];
} Student;
// Preenche uma estrutura Student com valores recebidos por parametro
void fill_student(Student *s, char age, short number, char *name, char *address);
