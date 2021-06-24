.section .text
	.global count_even # int count_even(short *vec, int n), returns the number of even numbers in vector pointed by vec1, with n elements
	count_even:
		# prologue
		pushl %ebp 					# save previous stack frame pointer
		movl %esp, %ebp 			# the stack frame pointer for sum function
		pushl %ebx
		
		movl $0, %eax				# moves 0 to %eax (counter of even numbers)
		movl 8(%ebp), %ecx 			# moves *vec to %ecx
		movl 12(%ebp), %ebx 		# moves n to %ebx (counter)

		loop:
			cmpl $0, %ebx			# compares %ebx to 0
			je end					# jumps to end if equal
			pushl %ebx
			pushl %eax
			movw (%ecx), %ax		# moves short *(vec1) to %ax
			cwd						# converts word to double-word
			movw $2, %bx			# moves 2 to %bx
			idivw %bx				# divides %ax with %bx (*vec1/2)
			cmpw $0, %dx			# compares %dx (remainder) with 0
			popl %eax				
			popl %ebx
			je even 				# jumps if *vec1 is equal (remainder of division is 0)
			decl %ebx				# decrements counter
			addl $2, %ecx			# adds 2 to %ecx (vec1++)
			jmp loop

		even:
			incl %eax				# increments %eax
			decl %ebx				# decrements %ebx
			addl $2, %ecx			# adds 2 to %ecx (vec1++)
			jmp loop

		end:	
			# epilogue
			popl %ebx
			movl %ebp, %esp 			# restore the previous stack pointer ("clear" the stack)
			popl %ebp 					# restore the previous stack frame pointer
			ret
