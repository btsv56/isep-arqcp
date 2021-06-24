.section .data
.global currentSalary
.global code
	
.section .text
	.global new_salary # int new_salary(void)
	new_salary:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl currentSalary, %eax
		movl code, %ecx
		
		movl $10, %edx
		cmpl %ecx, %edx
		je code10 # jumps if code is equal to 10
		
		movl $11, %edx
		cmpl %ecx, %edx
		je code11 # jumps if code is equal to 11
		
		movl $12, %edx
		cmpl %ecx, %edx
		je code12 # jumps if code is equal to 12
		
		# if code isn't 10, 11 or 12
		
		addl $100, %eax # adds 100 to currentSalary
		jmp end
		
	code10:
		addl $300, %eax # adds 300 to currentSalary
		jmp end
	
	code11:
		addl $250, %eax # adds 250 to currentSalary
		jmp end
	
	code12:
		addl $150, %eax # adds 150 to currentSalary
		jmp end
	
	end:
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
