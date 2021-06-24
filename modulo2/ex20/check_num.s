.section .data
	.global num
	
.section .text
	.global check_num
# Retorna 1, se num é par e negativo
# 2, se num é impar e negativo
# 3, se num é par e positivo
# 4, se num é impar e positivo	
check_num:
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	movl num, %eax		#Coloca num em %eax
	cdq					#Extende o sinal de %eax em %edx
	movl $2, %ecx		#Coloca 2 em %ecx
	idivl %ecx			#Divide %edx:%eax por %ecx
	movl $0, %eax		#Coloca 0 em %eax
	cmpl %eax, %edx		#Compara %eax com %edx
	jne .odd			#Verifica se %eax é diferente de %edx
	addl $1, %eax		#Adiciona 1 a %eax
	jmp .negative		#Salta para .negative
	
.odd:
	addl $2, %eax		#Adiciona 2 a %eax
	jmp .negative		#Salta para .negative
	
.negative:
	movl num, %ecx		#Coloca num em %ecx
	movl $0, %edx		#Coloca 0 em %edx
	cmpl %edx,%ecx		#Compara %edx com %ecx
	jl .final			#Verfica se %ecx é menor que %edx
	addl $2,%eax		#Adiciona 2 a %eax
	
	
.final:
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer	
	ret
