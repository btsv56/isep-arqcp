.section .data
	.global ptrvec
	.global num

.section .text
	.global vec_zero # int vec_zero(void)
	vec_zero:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		movl $0, %eax
		movl ptrvec, %ecx # pointer
		movl $0, %edx # counter

		loop:
			cmpl num, %edx
			je end
			cmpw $100, (%ecx)
			jge hundred # jumps if number is greater or equal to 100
			addl $2, %ecx
			incl %edx
			jmp loop

		hundred:
			movw $0, (%ecx) # moves 0 to number's position
			incl %eax
			addl $2, %ecx
			incl %edx
			jmp loop

		end:
			# epilogue
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
		
			ret
