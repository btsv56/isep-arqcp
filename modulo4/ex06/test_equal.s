.section .text
	.global test_equal
#Vericica se duas strings são iguais
test_equal:
	#Prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	pushl %esi				# guarda o valor de %esi na stack
	pushl %ebx				# guarda o valor de %ebx na stack
	
	#Body
	movl $1,%eax
	movl 8(%ebp), %esi		#Coloca o endereço da primeira string em %esi
	movl 12(%ebp), %ebx		#Coloca o endereço da segunda string em %ebx
.loop:
	movb (%esi), %dh		#Coloca um carater da primeira string em %dh
	movb (%ebx), %dl		#Coloca um carater da segunda string em %dl
	cmpb %dh,%dl			#Compara os valores dos carateres
	jne .not_equal			
	cmpb $0, %dh			#Verifica se a primeira string chegou ao fim
	je .end
	cmpb $0,%dl				#Verifica se a segunda string chegou ao fim
	je .end
	incl %ebx
	incl %esi
	jmp .loop
	jmp .end
	
.not_equal:
	movl $0,%eax			#Atribui o valor 0 a %eax caso as strins não sejam iguais
.end:
	popl %ebx				#Restaura o valor de %ebx
	popl %esi				#Restaura o valor de %esi
	#Epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
