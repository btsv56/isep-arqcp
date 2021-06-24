.section .text
	.global activate_bit
	.global activate_2bits
#Coloca o bit pos e o bit 31-pos a 1 no valor inteiro apontado pelo endreço recebido por parametro retornando 1 se o bit pos foi alterado	
activate_2bits:
	#Prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	pushl %esi
	
	#Body
	movl 8(%ebp), %esi	#Coloca o endereço do inteiro em %esi
	movl 12(%ebp), %ecx	#Coloca pos em %ecx
	pushl %ecx			#Salvaguarda o valor de %ecx
	pushl %ecx			#Guarda o segundo parametro de activate_bit na stack
	pushl %esi			#Guarda o primeiro parametro de activate_bit na stack
	call activate_bit	#Chama a função activate_bit
	addl $8, %esp		#Retira os parametros de activate_bit da stack
	popl %ecx			#Restaura o valor de %ecx
	movl $31,%edx		
	subl %ecx,%edx		#Subtrai %ecx a %edx
	pushl %edx			#Guarda o segundo parametro de activate_bit na stack
	pushl %esi			#Guarda o primeiro parametro de activate_bit na stack
	call activate_bit	#Chama a função activate_bit
	addl $8,%esp 		#Retira os parametros da função activate_bit da stack
	
	#Epilogue
	popl %esi		
	movl %ebp,%esp
	popl %ebp
	ret
	
	
#Coloca o bit pos a 1 no valor inteiro apontado pelo endreço recebido por parametro retornando 1 se o bit pos foi alterado
activate_bit:
	#Prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	pushl %esi
	
	#Body			
	movl $0,%eax			
	movl 12(%ebp), %ecx		#Coloca pos em %ecx
	cmpl $31,%ecx			#Verifica se pos é superior a %ecx
	jg .end
	cmpl $0, %ecx			#Verifica se pos é inferior a 0
	jl .end
	movl 8(%ebp),%esi		#Coloca o endereço de um inteiro em %esi
	movl $1, %edx			#Coloca 1 em %edx, criando uma mascara com o primeiro bit 1 e os restantes 0
	shll %cl,%edx			#Desloca %edx em pos bits
	pushl %edx				#Salvaguarda o valor de %edx
	andl (%esi),%edx		#AND logico entre %edx e o valor apontado por %esi
	cmpl $0, %edx			#Verifica se o bit pos é 0
	sete %al				#Define o valor de %al a 1 se o bit for 0
	popl %edx				#Restaura o valor de %edx
	orl %edx,(%esi)			#OR logico entre %edx e o valor apontado por %esi
.end:
	#Epilogue
	popl %esi			#Restaura o valor de %esi
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	ret
