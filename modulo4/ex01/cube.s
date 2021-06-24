.section .text
	.global cube # int cube(int x), returns the cube of x
	cube:
		# prologue
		pushl %ebp 					# save previous stack frame pointer
		movl %esp, %ebp 			# the stack frame pointer for sum function
		
		movl 8(%ebp), %ecx			# moves x to %ecx
		movl $1, %eax				# moves 1 to %eax
		imull %ecx, %eax			# multiplies x with %eax (1)
		imull %ecx, %eax			# multiplies x with %eax (x)
		imull %ecx, %eax			# multiplies x with %eax (x^2)

		# epilogue
		movl %ebp, %esp 			# restore the previous stack pointer ("clear" the stack)
		popl %ebp 					# restore the previous stack frame pointer
		ret
