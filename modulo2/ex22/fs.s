.section .data
	.global i
	.global j
	
.section .text
	.global f

#Se i≃j realiza a operação i-j+1,senão realiza a operação i+j-1	
f: 
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	movl i, %eax		#Coloca i em #eax	
	movl j, %ecx		#Coloca j em %ecx
	cmpl %eax,%ecx		#Compara %eax com %ecx
	jne .different		#Verifica se i é diferente de j
	subl %ecx,%eax		#Subtrai %ecx a %eax
	addl $1,%eax		#Adiciona 1 a %eax
	jmp .final			#Salta para .final
	
.different:
	addl %ecx,%eax		#Adiciona %ecx a %eax
	subl $1,%eax		#Subtrai 1 a %eax
	
.final:
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer	
	ret
