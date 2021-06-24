.section .data
	.global ptrsrc
	.global num
	.global ptrdest

.section .text
	.global sort_without_reps # int sort_without_reps(void)
	.global array_sort # void array_sort(void)
	.global exists # int exists(void)
	sort_without_reps:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		pushl %ebx

		call array_sort # orders src in ascending order
		movl $0, %eax # result
		movl ptrsrc, %edx # source pointer
		movl ptrdest, %ecx # destination pointer
		movl $0, %ebx # counter

		loop:
			cmpl num, %ebx
			je end
			pushl %eax
			pushl %ebx
			pushl %edx
			pushl %ecx
			movl (%edx), %ebx # moves number into %ebx
			call exists # checks if dest already has that number
			cmpl $0, %eax
			je no_dup # if it doesn't, jumps to no_dup
			popl %ecx
			popl %edx
			popl %ebx
			popl %eax
			addl $4, %edx
			incl %ebx
			jmp loop

		no_dup:
			popl %ecx
			movl %ebx, (%ecx) # adds number to dest
			popl %edx
			popl %ebx
			popl %eax
			addl $4, %ecx # increments ptrdest
			addl $4, %edx
			incl %ebx
			incl %eax # increments counter
			jmp loop

		end:
			popl %ebx
			# epilogue
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
		
			ret


	array_sort:
		# prologue
		pushl %ebp 			# save previous stack frame pointer
		movl %esp, %ebp 	# the stack frame pointer for sum function
		push %esi
		push %ebx

		movl ptrsrc, %esi # pointer
		movl $0,%ecx # counter 1

		.loop1:
			cmpl num,%ecx
			je .end_loop1
			movl %ecx,%eax # counter 2
			inc %eax

		.loop2:
			cmpl num, %eax
			je .end_loop2
			movl (%esi,%ecx,4), %edx # moves ptrsrc+1 to %edx
			movl (%esi,%eax,4), %ebx # moves ptrsrc+2 to %edx
			cmp %ebx,%edx
			jle .continue # jumps if ptrsrc+2 is less or equal to ptrsrc+1
			movl %ebx, (%esi,%ecx,4) # if not, swaps ptrsrc+2 and ptrsrc+1
			movl %edx, (%esi,%eax,4)

		.continue:
			incl %eax # increments counter 2
			jmp .loop2

		.end_loop2:
			incl %ecx # increments counter 1
			jmp .loop1
			
		.end_loop1:
			# epilogue
			pop %ebx
			pop %esi
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
			ret


	exists:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function

		pushl %ebx
		movl $0, %edx # counter
		movl ptrdest, %ecx # pointer
		movl $0, %eax # result (number of times the value in %ebx shows up in dest)

		loop1:
			cmpl num, %edx
			je almost
			cmpl (%ecx), %ebx
			je yes # jumps if equal
			addl $2, %ecx
			incl %edx
			jmp loop1

		yes:
			incl %eax # increments %eax
			addl $2, %ecx
			incl %edx
			jmp loop1

		almost:
			cmpl $0, %eax
			jg dup # jumps if there's at least one number that's equal to the value of %ebx
			jmp end1

		dup:
			movl $1, %eax # moves 1 to %eax if number is already in dest
			jmp end1

		end1:
			popl %ebx
			# epilogue
			movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
			popl %ebp # restore the previous stack frame pointer
	
			ret
