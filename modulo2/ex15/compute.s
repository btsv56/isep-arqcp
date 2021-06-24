.section .data
	.global A
	.global B
	.global C
	.global D
	
.section .text
	.global compute
	#Realiza a operação ((A*B)+c)/D
compute:
	
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	movl $0,%eax 		#Coloca 0 em %eax
	movl D, %ecx 		#Coloca D em %ecx
	cmpl %ecx,%eax 		#Compara %ecx com %eax
	jne .not_zero 		#Verifica se %ecx não é 0
	jmp .final

.not_zero:	
	movl A,%eax 		#Coloca A em %eax
	movl B,%ecx 		#Coloca B em %ecx
	imull %ecx			#Multiplica %eax por %ecx, resultado em %edx:%eax
	movl C,%ecx			#Coloca C em %ecx
	addl %ecx,%eax		#Adiciona %ecx a %eax, resultado em %eax
	movl D,%ecx			#Coloca D em %ecx
	idivl %ecx			#Divide %edx:%eax por %ecx, resultado em %eax

.final:	
	# epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	ret
