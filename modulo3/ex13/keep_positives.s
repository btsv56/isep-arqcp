.section .data
	.global ptrvec
	.global num
.section .text
	.global keep_positives
#Troca os valores negativos de um array com o valor do indice em que se encontram no array	
keep_positives:
	# prologue
	pushl %ebp 					# save previous stack frame pointer
	movl %esp, %ebp 			# the stack frame pointer for sum function
	push %esi					# Guarda o valor de %esi na stack

	#Body
	movl ptrvec, %esi			#Coloca o endereço ptrvec em %esi
	movl $0,%edx				#Coloca 0 em %edx
.loop:
	cmpl num,%edx				#Compara num com %edx
	je .end_loop				#Verifica se %edx é menor que num
	movl  (%esi,%edx,4),%eax	#Coloca o valor apontado por %esi+%edx*4 em %eax
	cmpl $0,%eax				#Coloca 0 em %eax
	jge .continue				#Verifica se %eax é maior ou igual a 0
	movl %edx, (%esi,%edx,4)	#Coloca %edx no valor apontado por %esi+%edx*4
.continue:
	incl %edx					#Incrementa 1 a %edx
	jmp .loop					#Salta para .loop
	
.end_loop:
	# epilogue
	pop %esi					#Restaura o valor de %esi
	movl %ebp, %esp 			# restore the previous stack pointer ("clear" the stack)
	popl %ebp 					# restore the previous stack frame pointer
	ret
