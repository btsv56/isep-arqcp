.section .text
	.global fun1

fun1:
	#Epilogue
	pushl %ebp
	movl %esp,%ebp
	
	#Body
	movl 8(%ebp), %ecx
	movw (%ecx), %ax
	
	#Prologue
	movl %ebp,%esp
	popl %ebp
	ret
