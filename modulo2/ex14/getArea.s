.section .data
base:
	.int 3
height:
	.int 4
.global base
.global height
	
.section .text
	.global getArea # int getArea(void)
	getArea:
		# prologue
		pushl %ebp # save previous stack frame pointer
		movl %esp, %ebp # the stack frame pointer for sum function
		
		movl base, %eax # move base to %eax
		movl height, %ecx # move height to %ecx
		mull %ecx # multiplies %eax with %ecx (result in %eax)
		movl $2, %ecx # moves the number 2 to %ecx
		divl %ecx # divides %eax with %ecx
		
		# epilogue
		movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
		popl %ebp # restore the previous stack frame pointer
		
		ret
