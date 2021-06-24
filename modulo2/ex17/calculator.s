.section .data

x:
	.int 0
y:
	.int 0
.global x
.global y
	
.section .text
	.global sum # int sum(void)
	sum:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl x, %eax # moves x to %eax
		movl y, %edx # moves y to %edx
		addl %edx, %eax # adds x and y to %eax
		jmp end # jumps to end
	
	.global	subtract
	subtract:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl x, %eax
		movl y, %edx
		subl %edx, %eax # subtracts y from x, result in %eax
		jmp end
	
	.global multiply
	multiply:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl x, %eax
		movl y, %edx
		imull %edx, %eax # multiplies x with y, result in %eax
		jmp end
	
	.global divide
	divide:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl $0, %eax # places 0 in %eax
		movl y, %ecx
		cmpl %ecx, %eax # compares y to 0
		je end # if y=0, jump to end (returns 0)
		movl x, %eax
		cdq # converts %eax to %edx:%eax
		idivl %ecx # divides %ecx with %eax, quotient in %eax
		jmp end
		
	.global mod
	mod:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl $0, %eax
		movl y, %ecx
		cmpl %ecx, %eax
		je end
		movl x, %eax
		cdq
		idivl %ecx # divides %ecx with %eax, quotient in %eax
		movl %edx, %eax # move remainer to %eax
		cdq
		jmp end
	
	.global squared
	squared:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl x, %eax 
		movl x, %ecx
		imull %ecx, %eax # multiplies x with x
		jmp end
	
	.global cubed
	cubed:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl x, %eax
		movl x, %ecx
		imull %ecx, %eax
		imull %ecx, %eax # multiplies x with x with x
		jmp end
		
	end:
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
