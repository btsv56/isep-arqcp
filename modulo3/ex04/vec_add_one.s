.section .data
	.global ptrvec
	.global num

.section .text
	.global vec_add_one # void vec_add_one(void)
	vec_add_one:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl ptrvec, %eax # pointer
		movl $0, %ecx # counter
		loop:
			cmpl num, %ecx
			je end
			addl $1, (%eax) # adds 1 to pointer's position
			addl $4, %eax
			incl %ecx
			jmp loop

		end:
			# epilogue
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
		
			ret
