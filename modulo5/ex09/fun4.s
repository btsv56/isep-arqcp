.section .text
	.global fun4
	
fun4:
	#Prologue
	pushl %ebp
	movl %esp, %ebp
	
	#Body
	movl 8(%ebp), %ecx
	addl $8, %ecx
	movl (%ecx),%edx
	movw (%edx), %ax
	
	#Epilogue
	movl %ebp,%esp
	popl %ebp
	ret
