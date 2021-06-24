.section .data
	.global ptrgrades
	.global ptrfreq
	.global num
	
.section .text
	.global frequencies
#Preenche o vetor apontado por ptrfreq com o numero de notas guardadas no vetor apontado por ptrgrades
frequencies:
	pushl %ebp 					# save previous stack frame pointer
	movl %esp, %ebp 			# the stack frame pointer for sum function
	push %esi					# Guarda o valor de %esi na stack
	push %ebx					# Guarda o valor de %ebx na stack

	#Body
	movl ptrgrades, %esi		#Coloca o endereço ptrgrades em %esi
	movl ptrfreq, %ebx			#Coloca o endereço ptrfreq em %Ebx
	movl $0,%ecx				#Coloca 0 em %ecx
	movl $0,%edx				#Coloca 0 em %edx
.loop0:
	cmpl $21,%edx				#Compara 21 com %edx
	je .loop					#Verifica se %edx é igual a 21
	movl %ecx,(%ebx,%edx,4)		#Coloca o valor de %ecx no valor apontado por %ebx+%edx*4
	incl %edx					#Incrementa 1 a %edx
	jmp .loop0					#Salta para .loop0
.loop:
	cmpl num,%ecx				#Compara num com %ecx
	je .end_loop				#Verifica se %ecx é igual a num
	movsx (%esi,%ecx,1),%eax	#Coloca o valor apontado por %esi+%ecx+1 em %eax extendendo o sinal
	cmpl $0,%eax				#Compara 0 com %eax
	jl .continue				#Verifica se %eax é menor que 0
	cmpl $20,%eax				#Comprara 20 com %eax
	jg .continue				#Verifica se %eax é maior que 20
	incl (%ebx,%eax,4)			#Incrementa 1 ao valor apontado por %ebx+%eax*4
.continue:
	incl %ecx					#Incrementa 1 a %ecx
	jmp .loop					#Salta para .loop
	
.end_loop:
	# epilogue
	popl %ebx					#Restaura o valor de %ebx
	popl %esi					#Restaura o valor de %esi
	movl %ebp, %esp 			# restore the previous stack pointer ("clear" the stack)
	popl %ebp
	ret
