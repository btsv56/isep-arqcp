.section .data
	s2:
		.short 3
	.global s2;
	s1:
		.short 2
	.global s1;
 
.section .text
 .global crossSumBytes
#Soma o byte mais significativo de s1 com o byte menos significativo de s2
crossSumBytes: 
	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	movw s1, %ax #Coloca s1 em %ax
	movw s2, %dx #Coloca s2 em %dx
	addb %dl, %ah #Realiza a soma entre o byte menos significativo de s2 e o byte mais significativo de s1
	addb %dh, %al #Realiza a soma entre o byte mais significativo de s2 e o byte menos significativo de s1
	
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
