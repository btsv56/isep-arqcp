#include <stdio.h>

//Finds how many times grades (integer part) appear in "grades" array
void frequencies(float *grades, int n, int *freq) {
    int pos=0;
    int i=0;
    for (i=0;i<21;i++) {
		*(freq+i)=0;
	}
	i=0;
    while (i<n) {
		pos=(int)*grades;
		*(freq+pos)+=1;
		i++;
		grades++;
    }
    int size=sizeof(grades)/sizeof(grades[0]);
    printf("size=%d\n", size);
}
            
        
    
