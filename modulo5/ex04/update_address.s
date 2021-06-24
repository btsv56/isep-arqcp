.section .text
	.global update_address
	
update_address:
	#Prologue
	pushl %ebp
	movl %esp, %ebp
	pushl %esi
	pushl %ebx
	
	#Body
	movl 8(%ebp), %esi
	addl $124, %esi
	movl 12(%ebp), %ebx
.loop:
	cmpb $0,(%ebx)
	je .end_loop
	movb (%ebx), %al
	movb %al, (%esi)
	incl %ebx
	incl %esi
	jmp .loop
	
.end_loop:
	#Epilogue
	movb $0, (%esi)
	popl %ebx
	popl %esi
	movl %ebp, %esp
	popl %ebp
	ret
