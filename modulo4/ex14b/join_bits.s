.section .text
	.global join_bits # int join_bits(int a, int b, int pos), returns a number that is composed by bits b31, b30..bpos+1, apos...a1, a0

	join_bits:
		# prologue
		pushl %ebp 					# save previous stack frame pointer
		movl %esp, %ebp 			# the stack frame pointer for sum function
		pushl %ebx

		movl 8(%ebp), %eax 			# moves a to %eax
		movl 12(%ebp), %edx 		# moves b to %eax
		movl $-1, %ebx 				# moves 0b111111111111111111111111111111 to %ebx (mask)
		movl $0, %ecx				# clears %ecx
		mov 16(%ebp), %cl 			# moves pos to %cl
		addb $1, %cl 				# adds 1 to %cl

		cmpb $32, %cl 				# compares %cl to 32
		je mask_0 					# jumps to mask_0 if equal
		shll %cl, %ebx 				# logically shifts mask pos number of times (mask b)
		movl %ebx, %ecx 			# moves %ebx (mask b) to %ecx
		notl %ecx 					# inverts mask b (mask a)
		jmp ops

		mask_0:
			movl $0, %ebx 			# moves 0 to %ebx (mask b)
			movl %ebx, %ecx 		# moves %ebx (mask b) to %ecx
			notl %ecx 				# inverts mask b (mask a)

		ops:
			andl %ecx, %eax			# AND's %ecx and %eax (mask a & a)
			andl %ebx, %edx			# AND's %ebx and %edx (mask b & b)
			orl %edx, %eax 			# OR's %edx and %eax (a | b)

		# epilogue
		popl %ebx
		movl %ebp, %esp 			# restore the previous stack pointer ("clear" the stack)
		popl %ebp 					# restore the previous stack frame pointer
		ret