.section .data
	.global ptr1
	
.section .text
	.global zero_count
#Conta o numero de '0' numa string	
zero_count:
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	#Body
	movl ptr1, %ecx		# Coloca o endereço de ptr1 em %ecx
	movl $0,%eax		# Coloca 0 em %eax
.loop:
	movb (%ecx), %dl	# Coloca o valor apontado por %ecx  em %dl
	cmpb $0, %dl		# Compara 0 com %dl
	je .end_loop		# Verifica se dl é inferior a 0
	cmpb $48, %dl		# Compara 48 com %dl
	jne .continue		# Verifica se %dl é diferente de 48
	incl %eax			# Incrementa 1 a %eax
.continue:
	incl %ecx			#Incrementa 1 a %ecx
	jmp .loop			#Salta para .loop
	
.end_loop:		
	# epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	ret
	
