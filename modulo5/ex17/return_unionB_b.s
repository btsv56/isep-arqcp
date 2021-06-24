.section .text
	.global return_unionB_b
	
return_unionB_b:
	#Prologue
	pushl %ebp
	movl %esp,%ebp
	pushl %esi
	
	#Body
	movl 8(%ebp),%esi
	movl 12(%ebp), %ecx
	movl 16(%ebp) ,%edx
	movl (%esi,%ecx,4),%ecx
	imull $28, %edx
	addl $20, %edx
	addl %edx, %ecx
	movb (%ecx), %al
	
	popl %esi
	#Epilogue
	movl %ebp,%esp
	popl %ebp
	ret
