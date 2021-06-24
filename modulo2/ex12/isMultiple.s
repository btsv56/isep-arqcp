.section .data
	.global A
	.global B
	
.section .text
	.global isMultiple
#Verifica se A é multiplo de B
isMultiple:
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	movl B, %ecx 		#Coloca B em %ecx
	movl $0, %eax 		#Coloca 0 em %eax
	cmpl %ecx, %eax 	#Compara %eax com %ecx
	je .is_zero 		#Verifica se %ecx é igual a 0, ou seja o divisor
	movl A, %eax 		#Coloca A em %eax
	cdq 				#Extende o sinal de %eax para %edx
	idivl %ecx 			# Divide %edx:%eax por %ecx
	movl $0, %ecx 		#Coloca 0 em %ecx
	cmpl %ecx,%eax		#Compara o o quociente com 0
	jl .is_zero			#Verifica se o quociente é negativo
	cmpl %edx,%ecx 		#Compara %eax com %ecx
	sete %al 			#Define o valor de %al que é o valor returnado como 1 se A for multiplo de B, ou 0 se não for
	jmp .final
	
.is_zero:
	movl $0, %eax		#Coloca 0 em %eax
	
.final:	
	# epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	ret
