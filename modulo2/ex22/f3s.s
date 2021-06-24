.section .data
	.global i
	.global j
	
.section .text
	.global f3
#Se i>=j, h = i * j e g = i + 1, senão h = i + j e g = i + j + 2, por fim faz g/h
f3:
	# prologue
	pushl %ebp 					# save previous stack frame pointer
	movl %esp, %ebp 			# the stack frame pointer for sum function
	
	movl i,%eax					#Coloca i em %eax
	movl j,%ecx					#Coloca j em %ecx
	cmpl %ecx,%eax				#Compara %ecx com %eax
	jl .less					#Verifica se %eax é meor 
	movl %eax, %edx				#Coloca %eax em %edx
	imull %ecx,%edx 				#h=%edx
	addl $1, %eax 				#g=%eax
	jmp .final					#Salta para .final
	
.less:
	addl %ecx,%eax 				#Adiciona %ecx a %eax
	movl %eax, %edx 			#h=%edx
	addl $2,%eax 				#g=%eax

.final:
	movl $0, %ecx				#Coloca 0 em %ecx
	cmpl %ecx,%edx				#Compara com %ecx com %edx
	jne .not_zero				#Verifica se %edx é diferente de 0
	movl $0,%eax				#Coloca 0 em %eax
	jmp .zero					#Salta para .zero
	
.not_zero:
	movl %edx, %ecx				#Coloca %edx em %ecx
	cdq							#Extende o sinal de %eax para %edx
	idivl %ecx 					#r=%eax	
	
.zero:
	# epilogue
	movl %ebp, %esp 			# restore the previous stack pointer ("clear" the stack)
	popl %ebp 					# restore the previous stack frame pointer	
	ret
