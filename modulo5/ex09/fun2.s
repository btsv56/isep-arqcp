.section .text
	.global fun2

fun2:
	#Epilogue
	pushl %ebp
	movl %esp,%ebp
	
	#Body
	movl 8(%ebp), %ecx
	addl $28, %ecx
	movw (%ecx),%ax 
	
	#Prologue
	movl %ebp,%esp
	popl %ebp
	ret
