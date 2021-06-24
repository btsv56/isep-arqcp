.section .text
	.global fun3
	
fun3:
	#Prologue
	pushl %ebp
	movl %esp, %ebp
	
	#Body
	movl 8(%ebp), %eax
	addl $28, %eax
	
	#Epilogue
	movl %ebp, %esp
	popl %ebp
	ret
