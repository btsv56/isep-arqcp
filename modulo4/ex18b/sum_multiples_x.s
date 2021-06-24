.section .text
	.global sum_multiples_x
#Calcula a soma de todos os inteiros de um vetor que são multiplos do segundo byte de x	
sum_multiples_x:
	#Prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	pushl %esi #Guarda o valor de %esi na stack
	pushl %ebx #Guarda o valor de %ebx na stack
	
	#Body
	movl 8(%ebp), %esi	#Coloca o endereço de vec em %esi
	movl 12(%ebp), %ebx	#Coloca x em %ebx
	movl $0,%ecx
	cmpl $0,%ebx
	je .end_loop
.loop:
	cmpb $0, (%esi)		#Verifica se o valor apontado por %esi é 0
	je .end_loop
	movzx (%esi), %ax	#Move e extende o sinal do valor apontado por %esi para %ax
	idivb %bh			#Divide %ax por %bh, resultado em %al e resto em %ah
	cmpb $0,%ah			#Verifica se o resto é igual a 0
	jne .continue
	movzx (%esi), %edx	#Move e extende o sinal do valor apontado por %esi para %edx
	addl %edx, %ecx		#Adiciona #edx a %ecx
.continue:
	incl %esi
	jmp .loop
	
.end_loop:
	#Epilogue
	movl %ecx, %eax		#Coloca o valor da soma em %eax
	popl %ebx			#Restaura o valor de %ebx
	popl %esi			#REstaura o valor de %esi
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
