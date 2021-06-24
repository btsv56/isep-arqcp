//Ativa todos os bits de um numero à esquerda de left e à direita por rigth, recebendo o numero,left e right por parametro	
int activate_bits(int a, int left, int right) {
	int mask=-1,maskAux;
	if(left>31 || right<0 || left<0 || right >31) {
		return a;
	}
	if(left != 31) {
		maskAux= mask << (left+1);
		a= a | maskAux;
	}
	if(right != 0) {
		maskAux = (unsigned) mask >> (32-right);
		a=a|maskAux;
	}
	return a;
}
