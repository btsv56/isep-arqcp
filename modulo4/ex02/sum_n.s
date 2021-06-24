.section .text
	.global sum_n
# Calcula a soma dos inteiros de 1 até n
sum_n:
	#Prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	#Body
	movl 8(%ebp), %ecx 	#Coloca o valor de n recebido por parametro em %ecx
	movl $1,%edx
	movl $0,%eax
.loop:
	cmpl %ecx,%edx		#Compara o valor de n com o valor de %edx
	jg .end				#Verifica se %edx é maior que %ecx
	addl %edx,%eax		#Adiciona %edx a %eax
	incl %edx
	jmp .loop
	
.end:	
	#Epilogue
	movl %ebp, %esp	 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	ret
	
