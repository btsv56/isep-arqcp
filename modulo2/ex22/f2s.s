.section .data
	.global i
	.global j
	
.section .text
	.global f2
#Se i>j realiza a operação i-1,senão realiza a operação j+1, por fim multiplica i por j		
f2:
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	movl i, %eax		#Coloca i em %eax
	movl j,%ecx			#Coloca j em %ecx
	cmpl %ecx, %eax		#compara %ecx com %eax
	jle .less			#Verifica se %eax é menor que %ecx
	subl $1, %eax		#Subtrai 1 a %eax
	jmp .final			#Salta para .final
	
.less:
	addl $1, %ecx		#Adiciona 1 a %ecx
	
.final:
	imull %ecx,%eax		#Multiplica %ecx com %eax, resultado em %eax 
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer	
	ret
