.section .data
	.global ptrvec
	.global num
	
.section .text
	.global vec_greater20
#Conta quantos numeros num array de long long ints são maiores que 20
vec_greater20:
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	push %ebx			# Guarda o valor de %ebx na stack

	#Body
	movl ptrvec, %ecx	#Coloca o endereço ptrvec em %ecx
	movl $0,%eax		#Coloca 0 em %eax
	movl $0,%ebx		#Coloca 0 em %ebx
.loop:
	cmpl num, %ebx		#Compara num com %ebx
	je .end_loop		#Verifica se %ebx é menor que num
	movl 4(%ecx), %edx	#Colocar o valor pontado por 4 bytes para a frente de %ecx
	cmpl $0, %edx		#Compara 0 com %edx
	jg .increm			#Verifica se %edx é superor a 0
	movl (%ecx), %edx	#Coloca o valor apontado por %ecx em %edx
	cmpl $20, %edx		#Compara 20 com %edx
	jle .continue		#Verifica se %edx é menor que 20
.increm:
	incl %eax			#Incrementa 1 a %eax
.continue:
	addl $8, %ecx		#Adiciona 8 a %ecx
	incl %ebx			#Incrementa 1 a %ebx
	jmp .loop			#Salta para .loop

.end_loop:
	pop %ebx			#Restaura o valor de %ebx
	# epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	ret
