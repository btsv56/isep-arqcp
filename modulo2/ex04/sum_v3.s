.section .data
 .global op1
 .global op2
	op3:
		.int 3
	.global op3
	op4:
		.int 4
	.global op4
.section .text
 .global sum_v3 # void sum(void)
 #Realiza a operação op4+op3-op2+op1
sum_v3:
	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	movl op3, %ecx   #Coloca op3 in ebx
	movl op4, %eax   #Coloca op4 in eax
	addl %ecx, %eax  #adiciona op4 a op3
	movl op1, %ecx   #Coloca op1 in ecx
	movl op2, %edx   #Coloca op2 in edx
	subl %edx, %eax  #Subtrai (op4+op3) a op2
	addl %ecx, %eax  #Adciona (op4+op3)-op2 a op1
	
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
