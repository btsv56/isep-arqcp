.section .data
	.global ptrvec
	.global num

.section .text
	.global count_seq # int count_seq(void)
	.global check_seq # int check_seq(void)
	check_seq:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		pushl %ebx

		movl $0, %eax
		movl ptrvec, %ebx # pointer

		movl 4(%ebx), %ecx # copies n+1 to %ecx
		cmpl %ecx, (%ebx)
		jge end1 # jumps if n is greater than n+1
		movl 8(%ebx), %ecx # copies n+2 to %ecx
		cmpl %ecx, (%ebx)
		jge end1 # jumps if n is greater than n+2
		movl $1, %eax # if sequence is correct (no jumps), increments %eax
		jmp end1

		end1:
			popl %ebx
			# epilogue
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
		
			ret


	count_seq:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		pushl %ebx
		movl $0, %eax # result
		movl ptrvec, %edx # pointer
		movl num, %ecx
		subl $2, %ecx # number of loop iterations
		cmpl $1, %ecx # checks if vector has less than 3 numbers
		jl end

		loop:
			cmpl $0, %ecx
			je end
			pushl %eax
			pushl %ecx
			pushl %edx
			movl %edx, ptrvec # moves pointer location to ptrvec to be used in test_seq
			call check_seq
			popl %edx
			popl %ecx
			cmpl $1, %eax 
			je seq_found # jumps if there's a sequence
			popl %eax
			addl $4, %edx # next number in vec
			decl %ecx
			jmp loop

		seq_found:
			popl %eax
			incl %eax #increments %eax
			addl $4, %edx
			decl %ecx
			jmp loop

		end:
			popl %ebx
			# epilogue
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
		
			ret
