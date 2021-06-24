.section .text
	.global vec_count_bits_zero
	.global count_bits_zero
#Conta o numeros de bits a 0 num vetor de inteiros
vec_count_bits_zero:
	#Prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	pushl %ebx
	pushl %esi
	
	#Body
	movl 8(%ebp), %esi		#Coloca o endereço do vetor em %esi
	movl 12(%ebp), %ebx		#Coloca o numero de elementos do vetor em %ebx
	movl $0,%ecx
	movl $0,%edx
.loop:
	cmpl %ebx,%ecx			#Verifica se o vetor chegou ao fim
	je .end
	pushl %ecx				#Salvaguarda o valor de %ecx
	movl (%esi),%ecx		#Coloca o valor apontado por %esi em %ecx
	pushl %edx				#Salvaguarda o valor de %edx
	pushl %ecx				#Coloca o primeiro parametro na stack
	call count_bits_zero	#Chama a função count_bits_Zero
	addl $4, %esp			#Remove os parametros de count_bits_zero da stack
	popl %edx				#Restaura o valor de %edx
	popl %ecx				#Restaura o valor de %ecx
	addl %eax,%edx			#Adiciona o valor de bits a 0 do numero recebido
	incl %ecx
	addl $4,%esi
	jmp .loop
.end:
	movl %edx,%eax			#Coloca o numero de bits a 0 em %eax
	#Epilogue
	popl %esi
	popl %ebx
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret

	
#Conta o numero de bits a 0 de um inteiro	
count_bits_zero:
	#Prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	#Body
	movl 8(%ebp),%edx	# Coloca x em %edx
	movl $0,%ecx
	movl $0,%eax
.loop1:
	cmpl $32,%ecx		#Verifica se todos os bits já foram verificados
	je .end1
	shll %edx			#Deslocamento logico de 1 bit de x para a esquerda
	jc .continue		#Verfica se a flag de carry foi ativada
	incl %eax
.continue: 
	incl %ecx
	jmp .loop1
.end1:
	#Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	ret

