.section .text
	.global greatest # int greatest(int a, int b, int c), returns the greatest of three integers
	greatest:
		# prologue
		pushl %ebp 					# save previous stack frame pointer
		movl %esp, %ebp 			# the stack frame pointer for sum function
		
		movl 8(%ebp), %eax			# moves a to %eax
		movl 12(%ebp), %edx			# moves b to %edx
		movl 16(%ebp), %ecx			# moves c to %ecx
		cmpl %eax, %edx				# compares %eax to %ecx
		jg b						# jumps if %edx is greater than %eax
		cmpl %eax, %ecx				# compares %eax to %ecx
		jg c 						# jumps if %ecx is greater than %eax
		jmp end

		b:
			movl %edx, %eax			# moves %edx (b) to %eax
			cmpl %eax, %ecx			# compares %eax to %ecx
			jg c 					# jumps if %ecx is greater than %eax
			jmp end

		c:
			movl %ecx, %eax			# moves %ecx to %eax
			
		end:
			# epilogue
			movl %ebp, %esp 			# restore the previous stack pointer ("clear" the stack)
			popl %ebp 					# restore the previous stack frame pointer
			ret
