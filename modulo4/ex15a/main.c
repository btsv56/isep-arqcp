#include <stdio.h>
#include "greater_date.h"

unsigned int build_date( int year , int month , int day ) {
	return  (year << 8)  | (month <<24 ) |  day ;
}

int main() {
	// 0b month: 00000001 year: 0000011111010000 day: 00001111 15/2000/01
	// 0b month: 00000010 year: 0000011111010000 day: 00010000 16/2000/02
	unsigned int date1=build_date(2013, 1, 31);
	unsigned int date2=build_date(12, 12, 31);
	int result=greater_date(date1,date2);
	printf("date1 = %p date2 = %p\nresult = %p\n", date1, date2, result);
	return 0;
}