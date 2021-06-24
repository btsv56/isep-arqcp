.section .data
	.global ptrvec
	.global num
	.global x

.section .text
	.global exists # int exists(void)
	.global vec_diff # int vec_diff(void)
	exists:
			# prologue
			pushl %ebp # save previous stack frame pointer
			movl %esp, %ebp # the stack frame pointer for sum function

			pushl %ebx
			movw x, %bx # moves x to %bx
			movl $0, %edx # counter
			movl ptrvec, %ecx # pointer
			movl $0, %eax # result

			loop1:
				cmpl num, %edx
				je almost
				cmpw (%ecx), %bx
				je yes # jumps if number in vec is equal to x
				addl $2, %ecx
				incl %edx
				jmp loop1

			yes:
				incl %eax # increments %eax if number in vec is equal to x
				addl $2, %ecx
				incl %edx
				jmp loop1

			almost:
				cmpl $1, %eax
				jg dup # jumps if there's more than one instance of x in vec
				movl $0, %eax # moves 0 to %eax if x only appears once in vec
				jmp end1

			dup:
				movl $1, %eax # moves 1 to %eax if x is duplicate
				jmp end1

			end1:
				popl %ebx
				# epilogue
				movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
				popl %ebp # restore the previous stack frame pointer
		
				ret

	vec_diff:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		pushl %ebx
		
		movl $0, %eax # int result
		movl ptrvec, %ecx # pointer
		movl $0, %edx # counter

		loop:
			cmpl num, %edx
			je end
			pushl %edx
			pushl %ecx
			pushl %eax
			movw (%ecx), %dx
			movw %dx, x # moves number to x to be used in exists
			call exists
			cmpl $0, %eax
			je no_dupl # jumps if number isn't duplicate
			popl %eax
			popl %ecx
			popl %edx
			incl %edx
			addl $2, %ecx
			jmp loop

		no_dupl:
			popl %eax
			incl %eax
			popl %ecx
			popl %edx
			incl %edx
			addl $2, %ecx
			jmp loop
		
		end:
			popl %ebx
			# epilogue
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
		
			ret
