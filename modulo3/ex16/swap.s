.section .data
	.global ptr1
	.global ptr2
	.global num

.section .text
	.global swap # void swap(void)
	swap:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		pushl %ebx
		movl ptr1, %eax # pointer 1
		movl ptr2, %edx # pointer 2
		movl $0, %ecx # counter

		loop:
			cmpl num, %ecx
			je end
			movb (%eax), %bh # moves char 1 to %bh
			movb (%edx), %bl # moves char 2 to %bl
			movb %bh, (%edx) # swaps char 2 with char 1 in vector 2
			movb %bl, (%eax) # swaps char 1 with char 2 in vector 1
			incl %eax
			incl %edx
			incl %ecx
			jmp loop

		end:
			popl %ebx
			# epilogue
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
		
			ret
