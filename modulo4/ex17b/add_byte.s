.section .text
	.global add_byte # void add_byte(char x, int* vec1, int* vec2)
	add_byte:
		# prologue
		pushl %ebp 					# save previous stack frame pointer
		movl %esp, %ebp 			# the stack frame pointer for sum function
		subl $8, %esp				# makes room for 3 local variables
		pushl %ebx

		movl 12(%ebp), %edx 		# moves vec1 to %edx
		movl 16(%ebp), %eax 		# moves vec2 to %eax
		movb 8(%ebp), %cl 			# moves x to %cl

		movl (%edx), %ebx 			# moves first element of vec1 to %ebx (counter)
		movl %ebx, (%eax)			# moves %ebx to vec2
		addl $4, %eax				# increments both pointers
		addl $4, %edx

		movl $0b11111111, -4(%ebp)	# moves first byte mask to -4(%ebp)
		movl $0b11111111, -8(%ebp)	# moves first byte mask to -8(%ebp)
		notl -8(%ebp)				# inverts -8(%ebp) (inverted first byte, or 0b11111111111111111111111100000000)

		loop:
			cmpl $0, %ebx			# compares %ebx with 0
			je end					# jumps to end if equal
			pushl %ebx				# saves %ebx in stack
			movl (%edx), %ebx		# moves *(vec1) to %ebx
			andl -4(%ebp), %ebx		# AND's first byte mask and %ebx
			addb %cl, %bl 			# adds %cl (x) to %bl
			pushl %ecx 				# saves %ecx in stack
			movl (%edx), %ecx 		# moves *(vec1) in %ecx
			andl -8(%ebp), %ecx 	# AND's inverted first byte mask and %ecx
			orl %ecx, %ebx 			# OR's %ecx and %ebx
			popl %ecx 				# recovers %ecx 
			movl %ebx, (%eax) 		# moves %ebx to *(vec2)
			popl %ebx 				# recovers %ebx
			decl %ebx 				# decrements counter
			addl $4, %eax 			# increments both pointers
			addl $4, %edx
			jmp loop

		end:
			# epilogue
			popl %ebx
			movl %ebp, %esp 			# restore the previous stack pointer ("clear" the stack)
			popl %ebp 					# restore the previous stack frame pointer
			ret