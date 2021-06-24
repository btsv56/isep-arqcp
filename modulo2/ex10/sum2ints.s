.section .data
.global op1
.global op2
	
.section .text
	.global sum2ints # long long sum2ints(void)
	sum2ints:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl op1, %eax # move op1 to %eax
		addl op2, %eax # adds op2 to %eax
		
		cdq # converts %eax to %edx:%eax
				
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
