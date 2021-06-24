.section .data
	.global ptrvec
	.global num
.section .text
	.global sum_first_byte
#Soma o primeiro byte de cada valor de um array de ints
sum_first_byte:
	# prologue
	pushl %ebp 					# save previous stack frame pointer
	movl %esp, %ebp 			# the stack frame pointer for sum function
	push %esi					#Guarda o valor de %esi na stack

	#Body
	movl ptrvec, %esi			#Coloca o endereço ptrvec em %esi
	movl $0,%ecx				#Coloca 0 em %ecx
	movl $0,%eax				#Coloca 0 em %eax
.loop:
	cmpl num,%ecx				#Compara num com %ecx
	je .end_loop				#Verifica se %ecx é menor que num
	movb (%esi,%ecx,4), %dl		#Coloca o valor apontado por %esi+%ecx*4 em %dl
	movsx %dl,%edx				#Coloca e extende %dl para %edx
	addl %edx,%eax				#Adiciona %edx a %eax
	incl %ecx					#Incrementa 1 a %ecx
	jmp .loop					#Salta para .loop
	
.end_loop:
	# epilogue
	pop %esi					#Restaura o valor de %esi
	movl %ebp, %esp 			# restore the previous stack pointer ("clear" the stack)
	popl %ebp 					# restore the previous stack frame pointer
	ret
