.section .data
.global op1
.global op2
	
.section .text
	.global test_flags # char test_flags(void)
	test_flags:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl op1, %edx # moves op1 to %edx
		movl op2, %ecx # moves op2 to %ecx
		addl %edx, %ecx # adds both operands to %ecx
		jc L1 # jumps to L1 if carry
		jo L2 # jumps to L2 if overflow
		movb $0, %al
		jmp end
		
	L1: # carry flag response
		movb $1, %al
		jmp end
	L2: # overflow flag response
		movb $1, %al
		jmp end
	end:
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
				
