.section .text
	.global calculate # int calculate(int a, int b), returns (a+b)-(a*b) and calls print_result(char op, int o1, int o2, int res)
	calculate:
		# prologue
		pushl %ebp 					# save previous stack frame pointer
		movl %esp, %ebp 			# the stack frame pointer for sum function
		subl $8, %esp				# makes room for 2 local variables
		
		movl 8(%ebp), %eax			# moves a to %eax
		movl 12(%ebp), %ecx			# moves b to %ecx
		addl %ecx, %eax				# adds a to b
		movl %eax, -4(%ebp)			# moves result of sum to -4(%ebp)
		movl 8(%ebp), %eax			# moves a to %eax
		imull 12(%ebp), %eax		# multiplies b with a
		movl %eax, -8(%ebp) 		# moves result of multiplication to -8(%ebp)

		pushl -4(%ebp)				# pushes sum in stack
		pushl 12(%ebp)				# pushes b in stack
		pushl 8(%ebp)				# pushes a in stack
		pushl $43					# pushes sum character in stack
		call print_result			# calls print_result
		addl $16, %esp				# clears stack

		pushl -8(%ebp)				# pushes multiplication in stack
		pushl 12(%ebp)				# pushes b in stack
		pushl 8(%ebp)				# pushes a in stack
		pushl $42					# pushes multiplication character in stack
		call print_result			# calls print_result
		addl $16, %esp				# clears stack

		movl -4(%ebp), %eax			# moves sum to %eax
		movl -8(%ebp), %ecx			# moves multiplication to %ecx
		subl %ecx, %eax				# subtracts sum with multiplication

		# epilogue
		movl %ebp, %esp 			# restore the previous stack pointer ("clear" the stack)
		popl %ebp 					# restore the previous stack frame pointer
		ret
