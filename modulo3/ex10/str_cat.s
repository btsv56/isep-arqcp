.section .data
	.global ptr1
	.global ptr2
	.global ptr3

.section .text
	.global str_cat # void str_cat(void)
	str_cat:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		pushl %ebx

		movl ptr1, %eax # str1
		movl ptr2, %edx # str2
		movl ptr3, %ecx # str3

		loop1:
			cmpb $0, (%eax)
			je loop2
			movb (%eax), %bl # moves char from str1 to str3
			movb %bl, (%ecx)
			incl %eax
			incl %ecx
			jmp loop1

		loop2:
			cmpb $0, (%edx)
			je end
			movb (%edx), %bl # moves char from str2 to str3
			movb %bl, (%ecx)
			incl %edx
			incl %ecx
			jmp loop1
			
		end:
			movb $0, (%ecx) # ends str3 with '0'
			popl %ebx
			# epilogue
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
		
			ret
