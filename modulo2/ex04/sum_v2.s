.section .data
 .global op1
 .global op2
 .equ CONST, 15
 
.section .text
 .global sum_v2
#Realiza a operacao (15-op1)-(15-op2)  
sum_v2:
	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	
	movl $CONST, %eax #Coloca a constante CONST em eax
	movl op1, %ecx #Coloca op1 em ecx
	movl op2, %edx #Coloca op2 em edx
	subl %ecx, %eax #Subtrai ecx a eax
	subl $CONST, %eax #Subtrai 15 a eax
	addl %edx, %eax #Soma edx a eax
	
	# epilogue
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
