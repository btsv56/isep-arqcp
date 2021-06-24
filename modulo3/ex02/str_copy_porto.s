.section .data
	.global ptr1
	.global ptr2

.section .text
	.global str_copy_porto # void str_copy_porto(void)
	str_copy_porto:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		movl ptr1, %eax # str1 pointer
		movl ptr2, %edx # str2 pointer
		loop_copy: # copies str1 to str2
			cmpb $0, (%eax) # checks if it's the end of the string
			je loop_porto
			movb (%eax), %cl
			movb %cl, (%edx)
			incl %eax
			incl %edx
			jmp loop_copy

		loop_porto: # converts "b"s to "v"s
			movb $0, (%edx) # ends str2
			loop:
				decl %edx # starts with the end of str2
				cmpb $0, (%edx)
				je end
				cmpb $118, (%edx) # checks if char is "b"
				je equal_v
				jmp loop

			equal_v:
				subb $20, (%edx) # converts "b" to "v"
				jmp loop

		end:
			# epilogue
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
			ret
