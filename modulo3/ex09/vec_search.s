.section .data
	.global ptrvec
	.global num
	.global x
	
.section .text
	.global vec_search
#Procura x num array de short ints e retorna o endereço onde se encontra ou 0 se não existir
vec_search:
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	pushl %ebx 			#Salva o valor de %ebx na stack 
	
	#Body
	movl ptrvec, %eax	#Coloca o endereço ptrvec em %eax
	movl $0, %ebx		#Coloca 0 em %ebx
.loop:
	movw (%eax), %dx	#Coloca o valor apontado por %eax em %dx
	cmpl num, %ebx		#Compara num com %ebx
	je .end_loop		#Verifica se num é igual a %ebx
	cmpw x, %dx			#Compara x com %dx
	je .final			#Verifica se %dx é igual que x
	addl $2, %eax		#Adiciona 2 a %eax
	incl %ebx			#Incrementa 1 a %ebx
	jmp .loop			#Salta para .loop

.end_loop:
	movl $0,%eax		#Coloca 0 em %eax
.final:
	popl %ebx
	# epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	ret
