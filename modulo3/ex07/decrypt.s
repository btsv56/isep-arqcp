.section .data
	.global ptr1
	
.section .text
	.global decrypt
#Subtrai dois a todos os caracteres de uma string que não são 'a' ou ' '
decrypt:
	# prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	#Body
	movl ptr1, %ecx		#Coloca o endereço ptr1 em %ecx
	movl $0,%eax		#Coloca 0 em %eax
.loop:
	movb (%ecx), %dl	#Coloca o valor apontado por %ecx em %dl
	cmpb $0, %dl		#Compara 0 com %dl
	je .end_loop		#Verifica se 0 é igual a %dl
	cmpb $'a',%dl		#Compara o carater 'a' é igual a %dl
	je .continue		#Verifica se o carater 'a' é igual a %dl
	cmpb $' ',%dl		#Compara o carater ' ' com %dl
	je .continue		#Verifica se ' ' é igual a %dl
	subb $2,%dl			#Subtrai 2 a %dl
	movb %dl,(%ecx)		#Coloca %dl no valor apontado por %ecx
	incl %eax			#Incremente 1 a %eax
.continue:
	incl %ecx			#Incrementa 1 a %ecx
	jmp .loop			#Sala para .loop
	
.end_loop:			
	
	# epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	ret
