.section .data
.global current
.global desired
	
.section .text
	.global needed_time # int needed_time(void)
	needed_time:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl $0, %eax 
		movw desired, %ax
		movw current, %cx
		cmpw %cx, %ax # compare desired with current
		jl neg # jumps if desired is less than current
		subw %cx, %ax # subtracts current from current
		movw $2, %cx
		mulw %cx # multiplies the result with 2
		jmp end
	
	neg:
		subw %ax, %cx # subtracts desired from current
		movw %cx, %ax # moves the result to %ax 
		movw $3, %cx
		mulw %cx # multiplies %ax with 3
		
	end:
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
		
