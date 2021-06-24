.section .data
	.global A
	.global B
	.global C
	.global D
	
.section .text
	.global sum_and_subtract # long long sum_and_subtract(void)
	sum_and_subtract:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movsx A, %eax # move A as int to %eax
		movsx B, %ecx # move B as int to %ecx
		addl %ecx, %eax # add A and B
		addl C, %eax # add C to %eax
		subl D, %eax # subtracts D from %eax
		
		cdq # converts the int result to long long (%edx:%eax)
				
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
