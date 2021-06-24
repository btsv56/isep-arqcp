#include <stdio.h>

//comprime 2 shorts num int e coloca esse int num array
void compress_shorts(short* shorts, int n_shorts, int* integers){
	int i=0;
	short* conv = (short*) integers;
	for(i = 0; i< n_shorts; i++){
		*(conv+i) = *(shorts+i);
	}
}


    
