.section .text
	.global count_bits_zero
#Conta o numero de bits a 0 de um inteiro	
count_bits_zero:
	#Prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	#Body
	movl 8(%ebp),%edx	# Coloca x em %edx
	movl $0,%ecx
	movl $0,%eax
.loop:
	cmpl $32,%ecx		#Verifica se todos os bits já foram verificados
	je .end
	shll %edx			#Deslocamento logico de 1 bit de x para a esquerda
	jc .continue		#Verfica se a flag de carry foi ativada
	incl %eax
.continue: 
	incl %ecx
	jmp .loop
.end:
	#Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	ret
