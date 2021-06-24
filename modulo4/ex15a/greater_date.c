#include <stdio.h>

int greater_date(unsigned int date1, unsigned int date2) {
	int month_mask=0b11111111000000000000000000000000; // mask for month
	int year_mask=0b111111111111111100000000; // mask for year
	int day_mask=0b11111111; // mask for day
	int day1=date1 & day_mask; // day from date1
	int day2=date2 & day_mask; // day from date2
	int year1=date1 & year_mask; // year from date1
	int year2=date2 & year_mask; // year from date2
	int month1=date1 & month_mask; // month from date1
	int month2=date2 & month_mask; // month from date2
	if (year1>year2) { 					// if year1 is greater than year2
		return date1;
	} else if (year1<year2) { 			// if year2 is greater than year1
		return date2;
	} else { 							// if year1 and year2 are equal:
		if (month1>month2) { 			// if month1 is greater than month2
			return date1;
		} else if (month1<month2) {
			return date2;
		} else {						// so on...
			if (day1>day2) {
				return date1;
			} else {
				return date2;
			}
		}
	}
}