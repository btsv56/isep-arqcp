.section .text
	.global activate_bits
#Ativa todos os bits de um numero à esquerda de left e à direita por rigth, recebendo o numero,left e right por parametro	
activate_bits:
	#Prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for sum function
	pushl %ebx	#Salvaguarda o valor de %ebx
	
	#Body
	movl 12(%ebp), %ecx		#Coloca left em %ecx
	movl 16(%ebp), %edx		#Coloca right em %edx
	cmpl $31,%ecx			#Verifca left é maior que 31
	jg .end
	cmpl $31, %edx			#Verifica se righ é maior que 31
	jg .end
	cmpl $0, %ecx			#Verifica se left é menor que 0
	jl .end
	cmpl $0, %edx			#Verifica se right é menor que 0
	jl .end
	movl 8(%ebp),%eax		#Coloca a em %eax
	movl $-1, %ebx			#Coloca uma mascara com todos os bits a 1 em %ebx
	cmpl $31, %ecx			#Verfifica se left é igual a 31
	je .continue
	pushl %ebx				#Salvaguarda o valor de %ebx
	incl %ecx				
	shll %cl,%ebx			#Deslocamento logico de %cl bits de %ebx
	orl %ebx,%eax			#Or logico de %ebx com %eax
	popl %ebx				#Restaura o valor de %ebx
.continue:
	cmpl $0, %edx			#Verifica se right é igual a 0
	je .continue2
	movl $32,%ecx			
	subl %edx, %ecx			
	shrl %cl, %ebx			#Deslocamento logico de %cl bits de %ebx
	orl %ebx,%eax 			#Or logico entre %ebx e %eax
.continue2:
	
.end:
	#Epilogue
	popl %ebx
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
