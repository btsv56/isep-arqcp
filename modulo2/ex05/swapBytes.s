.section .data
	.global s
	
.section .text
	.global swapBytes # short swapBytes(void)
	#Troca os bytes de um short
	swapBytes:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movw s, %dx # place s in dx
		movb %dh, %al # move last byte from %cx to first byte in %ax
		movb %dl, %ah # and vice-versa
				
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
