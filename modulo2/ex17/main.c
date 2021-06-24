#include <stdio.h>
#include "calculator.h"

int main() {
	char choice;
	int result;
	printf("Which operation do you need me to do?:\n  1 - Sum\n  2 - Subtract\n  3 - Multiply\n  4 - Divide\n  5 - Modulus\n  6 - Power of 2\n  7 - Power of 3\n");
	scanf("%c", &choice);
	if (choice>48 && choice<56) {
		switch (choice) {
			case 49:
				printf("Insert x:\n");
				scanf("%d", &x);
				printf("Insert y:\n");
				scanf("%d", &y);
				result=sum();
				break;
			case 50:
				printf("Insert x:\n");
				scanf("%d", &x);
				printf("Insert y:\n");
				scanf("%d", &y);
				result=subtract();
				break;
			case 51:
				printf("Insert x:\n");
				scanf("%d", &x);
				printf("Insert y:\n");
				scanf("%d", &y);
				result=multiply();
				break;
			case 52:
				printf("Insert x:\n");
				scanf("%d", &x);
				printf("Insert y:\n");
				scanf("%d", &y);
				result=divide();
				break;
			case 53:
				printf("Insert x:\n");
				scanf("%d", &x);
				printf("Insert y:\n");
				scanf("%d", &y);
				result=mod();
				break;
			case 54:
				printf("Insert x:\n");
				scanf("%d", &x);
				result=squared();
				break;
			case 55:
				printf("Insert x:\n");
				scanf("%d", &x);
				result=cubed();
				break;
		}
		printf("result = %d\n", result);
	} else {
		printf("Invalid command\n");
	}
	return 0;
}
