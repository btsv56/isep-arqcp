.section .data
	.global ptrvec
	.global num
.section .text
	.global array_sort
#Ordena um array por ordem descendente
array_sort:
	# prologue
	pushl %ebp 					# save previous stack frame pointer
	movl %esp, %ebp 			# the stack frame pointer for sum function
	push %esi					# Guarda o valor de %esi na stack
	push %ebx					# Guarda o valor de %ebx na stack

	#Body
	movl ptrvec, %esi			#Coloca o endereço ptrvec em %esi
	movl $0,%ecx				#Coloca 0 em %ecx
.loop1:
	cmpl num,%ecx				#Compara num com %ecx
	je .end_loop1				#Verifica se %ecx é igual que num
	movl %ecx,%eax				#Coloca %ecx em %eax
	inc %eax					#Incrementa 1 a %eax
.loop2:
	cmpl num, %eax				#Compara num com %eax
	je .end_loop2				#Verifica se num é igual a %eax
	movl (%esi,%ecx,4), %edx	#Coloca o valor apontado por %esi+%ecx*4 em %edx
	movl (%esi,%eax,4), %ebx	#Coloca o valor apontado por %esi+%eax*4 em %ebx
	cmp %ebx,%edx				#Compara %ebx com %edx
	jge .continue				#Verifica se %edx é maior ou igual a %ebx
	movl %ebx, (%esi, %ecx,4)	#Coloca %ebx no valor apontado por %esi+%ecx*4
	movl %edx, (%esi,%eax,4)	#Coloca %edx no valor apontado por %esi+%eax*4
.continue:
	incl %eax					#Incrementa 1 a %eax
	jmp .loop2					#Salta para .loop2
.end_loop2:
	incl %ecx					#Incrementa 1 a %ecx
	jmp .loop1					#Salta para .loop1
	
.end_loop1:
	# epilogue
	pop %ebx					#Restaura o valor de %ebx
	pop %esi					#Restaura o valor de %esi
	movl %ebp, %esp 			# restore the previous stack pointer ("clear" the stack)
	popl %ebp 					# restore the previous stack frame pointer
	ret
