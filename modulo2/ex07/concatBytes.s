.section .data
  .equ BYTE1, 1
  .equ BYTE2, 2
 
.section .text
 .global concatBytes #short concatBytes(void)
# Concatena 2 valores char num valor short e retorna esse valor
concatBytes:
	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	movb $BYTE2, %ah #Adiciona byte1 ao registo ah
	movb $BYTE1, %al	 #Adiciona byte2 ao registo al
	
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
