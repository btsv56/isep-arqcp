.section .text
	.global changes
	.global changes_vec
# Para cada numero num vetor de inteiros, inverte os 4 bits mais signficativos do terceiro byte de cada numero mas apenas quando esses 4 bits são maiores que 7	
changes_vec:
	#Prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	pushl %esi #Guarda o valor de %esi na stack
	
	#Body
	movl 8(%ebp), %esi			#Coloca o endereço do vetor em %esi
	movl 12(%ebp), %eax			#Coloca o numero de elementos do vetor em %eax
	movl $0, %ecx			
.loop:
	cmpl %eax, %ecx				#Verifica se o vetor chegou ao fim
	je .end_loop
	leal (%esi,%ecx,4), %edx	#Coloca o endereço de %esi+%ecx*4 em %edx
	pushl %ecx					#Guarda o valor de %ecx na stack
	pushl %eax					#Guarda o valor de %eax na stack
	pushl %edx					#Guarda na stack o valor do primeiro parametro de changes
	call changes				#Chama a função changes
	addl $4,%esp				#Remove da stack os parametros de changes
	popl %eax					#Restaura o valor de %eax
	popl %ecx					#Restaura o valor de %ecx
	incl %ecx					
	jmp .loop
	
.end_loop:
	#Epilogue
	popl %esi #Restaura o valor de %esi
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret

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

