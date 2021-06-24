.section .data
	.global i
	.global j
.section .text
	.global f4
	
#Se i+j<10, realiza a operação 4*i*i, senão faz j*j/3	
f4:
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	movl i,%eax			#Coloca i em %eax
	movl j,%ecx			#Coloca h em %ecx
	addl %ecx,%eax		#Adiciona %ecx a %eax
	movl $10, %edx		#Coloca 10 em %edx
	cmpl %edx, %eax		#Compara %eax com 10
	jge .greaterE		#Verifica se %eax é maior ou igual a 10
	movl i,%eax			#Coloca i em %eax
	movl $4, %ecx		#Coloca 4 em %ecx
	imull %eax,%ecx		#Multiplica %eax com %ecx, resultado em %ecx
	imull %ecx,%eax		#Multiplica %ecx com %eax, resultado em %eax
	jmp .final			#Salta para .final
	
.greaterE:
	mov %ecx,%eax		#Coloca %ecx em %eax
	imull %ecx			#Multiplica %eax por %ecx, resultado em %edx:%eax
	movl $3, %ecx		#Coloca 3 em %ecx
	idivl %ecx			#Divide %edx:%eax por %ecx, resultado em %eax
	
.final:
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer	
	ret
