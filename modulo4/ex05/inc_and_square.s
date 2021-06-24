.section .text
	.global inc_and_square # int inc_and_square(int *v1, int v2), increases the value pointed by v1 by one and returns the square of v2
	inc_and_square:
		# prologue
		pushl %ebp 					# save previous stack frame pointer
		movl %esp, %ebp 			# the stack frame pointer for sum function
		
		movl 8(%ebp), %ecx			# moves *v1 to %ecx
		movl 12(%ebp), %eax			# moves v2 to %eax
		movl 12(%ebp), %edx			# moves v2 to %edx
		incl (%ecx)					# increments the value pointed by %ecx
		imull %edx, %eax			# multiplies %edx with %eax (v2 * v2)	

		# epilogue
		movl %ebp, %esp 			# restore the previous stack pointer ("clear" the stack)
		popl %ebp 					# restore the previous stack frame pointer
		ret
