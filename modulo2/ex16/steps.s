.section .data
	.global num
	
.section .text
	.global steps
#Realiza a operação (num*3 +6)/3 +12 -num- 1
steps:
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	movl num, %eax 		#Coloca num em %eax
	movl $3, %ecx		#coloca 3 em %ecx
	imull %ecx,%eax		#Multiplica %eax, por %ecx
	movl $6, %ecx		#Coloca 6 em %ecx
	addl %ecx,%eax		#Adiciona %ecx a %eax
	cdq					#Extende o sinal de %eax a %edx
	movl $3, %ecx		#Coloca 3 em %ecx
	idivl %ecx			#Divide %edx:%eax por %ecx 
	movl $12, %ecx 		#Coloca 12 em %ecx
	addl %ecx, %eax		#Adiciona %ecx a %eax
	movl num,%ecx		#Coloca num em %ecx
	subl %ecx, %eax		#Coloca %ecx em %eax
	movl $1, %ecx		#Coloca 1 em %ecx
	subl %ecx, %eax		#Subtrai 1 a %eax
	
	# epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer	
	ret
