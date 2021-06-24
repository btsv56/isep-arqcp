.section .text
	.global changes
# Inverte os 4 bits mais signficativos do terceiro byte de um numero mas apenas quando esses 4 bits são maiores que 7	
changes:
	#Prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	pushl %esi #Guarda o valor de %esi na stack
	
	#Body
	movl 8(%ebp), %esi								#Coloca o endereço do numero em %esi
	movl $0b00000000111100000000000000000000, %ecx	#Coloca uma mascara em que o 4 bits mais signficativos do terceiro byte são 1 e os restantes 0
	movl $0b11111111000011111111111111111111, %edx	#Coloca uma mascara em que o 4 bits mais signficativos do terceiro byte são 0 e os restantes 1
	andl (%esi), %ecx								#AND logico entre o valor apontado por %esi e %ecx
	shrl $20,%ecx									#Deslocamento logico de 20 bits para a direita de %ecx
	cmpl $7, %ecx									#Deslocamento logico de 7 bits para a esquerda de %ecx
	jle .continue									#Verifica se %ecx é menor ou igual a 7
	notl %ecx										#Inverte os bits de %ecx
	shll $28,%ecx									#Deslocamento logico de 28 bits para a esquerda de %ecx
	shrl $8, %ecx									#Deslocamento logico de 8 bits para a direita de %ecx
	andl %edx, (%esi)								#AND logico entre %edx e o valor apontado por %esi
	orl %ecx,(%esi)									#OR logico entre %ecx e o valor apontado por %esi
	
.continue:	
	#Epilogue
	popl %esi #Restaura o valor de %esi
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
