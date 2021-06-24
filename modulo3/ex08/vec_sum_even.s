.section .data
	.global ptrvec
	.global num
	.global even

.section .text
	.global vec_sum_even # int vec_sum_even(void)
	.global test_even # int test_even(void)
	test_even:
			# prologue
			pushl %ebp # save previous stack frame pointer
			movl %esp, %ebp # the stack frame pointer for sum function

			pushl %ebx

			movl $0, %edx
			movl even, %eax # moves number to %eax
			movl $2, %ecx
			idivl %ecx # divides %eax with 2
			cmpl $1, %edx
			je one # jumps if rest is 1
			movl $1, %eax # if number is even, moves 1 to %eax
			jmp end1

			one:
				movl $0, %eax # if number is odd, moves 0 to %eax
				jmp end1

			end1:
				popl %ebx
				# epilogue
				movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
				popl %ebp # restore the previous stack frame pointer
		
				ret

	vec_sum_even:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		pushl %ebx
		movl ptrvec, %eax # pointer
		movl $0, %edx # counter
		movl $0, %ecx # total sum

		loop:
			cmpl num, %edx
			je end
			pushl %eax
			pushl %edx
			movl (%eax), %edx
			movl %edx, even # moves number to even to be used in test_even
			pushl %ecx
			call test_even
			popl %ecx
			popl %edx
			cmpl $1, %eax
			je add_even # jumps if number is even
			popl %eax
			addl $4, %eax
			incl %edx
			jmp loop

		add_even:
			popl %eax
			addl (%eax), %ecx # adds number to total sum
			addl $4, %eax
			incl %edx
			jmp loop
		
		end:
			movl %ecx, %eax
			# epilogue
			popl %ebx
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
		
			ret
