#include <stdio.h>
#include "where_exists.h"

int main() {
    char str1[]="x";
    char str2[]="dsxsds";
    char * str3;
    str3=where_exists(str1, str2);
    printf("%p\n", str3);
    return 0;
}
