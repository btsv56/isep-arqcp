#include <stdio.h>

int largest_number(char *ver) {
    int lar_num=48, i=0;
    while (ver[i]!='\0') {
        int num=ver[i];
        if (!(num>=48 && num<=57 || num>=65 && num<=70)) {
            return -1;
        }
        if (lar_num<num) {
            lar_num=num;
        }
        i++;
    }
    lar_num=lar_num-48;
    return lar_num;
}
