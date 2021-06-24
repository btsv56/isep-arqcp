#include <stdio.h>
#include "new_salary.h"

int code=10, currentSalary=100;

int main() {
	int salary=new_salary();
	printf("%d\n", salary);
	return 0;
}
