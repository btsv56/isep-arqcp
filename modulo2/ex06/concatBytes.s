.section .data
 .global byte1
 .global byte2
 
.section .text
 .global concatBytes #short concatBytes(void)
# Concatena 2 valores char em um valor short e retorna esse valor
concatBytes:
	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	movb byte2, %ah #Adiciona byte1 ao registo ah
	movb byte1, %al	 #Adiciona byte2 ao registo al
	
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
