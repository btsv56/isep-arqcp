.section .text
	.global calc
#Realiza a operação z=(*b)-a r=c*z-2
calc:
	#Prologue
	pushl %ebp 				# save previous stack frame pointer
	movl %esp, %ebp 		# the stack frame pointer for sum function
	
	#Body 
	subl $4,%esp			#Reserva 4 bytes na stack para variaveis locais
	movl 8(%ebp), %ecx		#Coloca a em %ecx
	movl 12(%ebp),%edx		#Coloca b em %edx
	subl %ecx,(%edx)		#Subtrai a ao valor apontado por b
	movl (%edx),%ecx		#Coloca o valor apontado por b em %ecx
	movl %ecx, -4(%ebp)		#Guarda o valor de %ecx como variavel local
	movl 16(%ebp), %eax		#Coloca o valor de c em %eax
	imull -4(%ebp), %eax	#Multiplica a primeira variavel local por c
	subl $2,%eax			
	
	#Epilogue
	movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
	popl %ebp 				# restore the previous stack frame pointer
	ret
