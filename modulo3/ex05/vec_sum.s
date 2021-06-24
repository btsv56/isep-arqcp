.section .data
	.global ptrvec
	.global num
	
.section .text
	.global vec_sum
# Calcula o valor da soma de todos os elementos de um array	
vec_sum:
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	pushl %ebx 			#Salva o valor de %ebx na stack 
	
	#Body
	movl ptrvec, %ecx 	#Coloca o endereço de ptrvec em %ecx
	movl $0, %eax		#Coloca 0 em %eax
	movl $0,%ebx		#Coloca 0 em $ebx
.loop:
	movl (%ecx), %edx	#Coloca o valor apontado por %ecx em %edx
	cmpl num,%ebx		#Compara o limite do array com a posição acedida, %ebx
	je .final			#Verifica se a posição do array existe
	addl %edx,%eax		#Adiciona %edx a %eax, ou seja o elemento do vetor
	addl $4, %ecx		#Adiciona 4 ao %ecx para que na proxima iteração se aceda ao segundo valor do vetor
	incl %ebx			#Incrementa 1 ao %ebx
	jmp .loop			#Salta para .loop

.final:	
	popl %ebx			#Restaura o valor inicial de %ebx
	# epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	ret
	
.global vec_avg
# Calcula a media dos valores de um vetor
vec_avg:
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function

	#Body 
	movl num, %ecx		#Coloca lim em %ecx
	movl $0, %eax
	cmpl %ecx,%eax
	jne .not_zero
	jmp .zero
	
.not_zero:
	call vec_sum		#Chama o procedimento vec_sum
	cdq					#Extende o sinal de %eax para %edx
	movl num, %ecx		#Coloca lim em %ecx
	idiv %ecx			#Divide %edx:%eax por %ecx, resultado em %eax
	
.zero:
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
	
