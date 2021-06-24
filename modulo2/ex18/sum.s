.section .data
	.equ A, 4
	.equ B, 2
	.global n
	
.section .text
	.global sum
#Realiza a operação Somatório de i até n de i ao quadrado, a multiplicar por A ao quadrado, divisão por B
sum:
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	movl $0,%eax		#Coloca 0 em %eax
	movl $B, %ecx		#Coloca B em %ecx
	cmpl %ecx,%eax		#Compara B com 0
	jne .not_zero		#verifica se B não é 0
	jmp .final			#Salta para .final
	
.not_zero:	
	movl $0, %eax		#Coloca 0 em %eax
	movl $1,%ecx		#Coloca 1 em %ecx
.loop:
	movl n,%edx 
	cmpl %edx, %ecx 	# Compara o valor de i com n
	jg .end_loop 		#O loop termina quando i>n
	movl %ecx,%edx
	imull %ecx,%ecx 	#Realiza a operação i ao quadrado
	addl %ecx,%eax 		#Incrementa ao valor do somatorio i ao quadrado
	incl %edx 			#Incrementa o i
	movl %edx, %ecx
	jmp .loop
	
.end_loop:
	movl $A, %ecx 
	imull %ecx,%ecx 	#Realiza a operação A ao quadrado
	imull %ecx 			#Calcula o valor da multiplicação do somatório de i com A ao quadrado
	movl $B, %ecx 
	idivl %ecx 			#Realiza a operação divisão por B da expressão

.final:	
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
