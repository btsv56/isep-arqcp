.section .text
	.global count_odd_matrix
count_odd_matrix:
	#Prologue
	pushl %ebp
	movl %esp, %ebp
	pushl %esi
	pushl %ebx
	pushl %edi
	
	#Body
	movl 8(%ebp),%esi
	movl 12(%ebp),%ebx
	movl 16(%ebp),%edi
	movl $0,%eax
	movl $0,%ecx
.loop:
	cmpl %ecx,%ebx
	je .end_loop
	pushl %ecx
	movl (%esi,%ecx,4),%ecx
	movl $0,%edx
.loop2:
	cmpl %edx,%edi
	je .end_loop2
	pushl %edx
	movl (%ecx,%edx,4),%edx
	test $1,%edx
	je .continue
	incl %eax
.continue:
	popl %edx
	incl %edx
	jmp .loop2
.end_loop2:	
	popl %ecx
	incl %ecx
	jmp .loop
.end_loop:
	popl %edi
	popl %ebx
	popl %esi
	#Epilogue
	movl %ebp,%esp
	popl %ebp
	ret
