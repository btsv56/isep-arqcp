.section .text
	.global sum_smaller
#Calcula a soma de dois numeros recebidos por parametros e coloca o menor dos dois no valor do endereço apontado por smaller
sum_smaller:
	#Prologue
	pushl %ebp 			# save previous stack frame pointer
	movl %esp, %ebp 	# the stack frame pointer for sum function
	
	#Body
	movl 8(%ebp),%eax 	#Coloca num1 em %eax
	movl 12(%ebp),%ecx	#Coloca num2 em %ecx
	movl 16(%ebp),%edx	#Coloca smaller em %edx
	cmpl %ecx,%eax		#Compara %ecx com %eax
	jl .smaller			#Verifica se num1 é menor que %eax
	movl %ecx,(%edx)	#Coloca num2 no valor apontado por smaller
	jmp .end
.smaller:
	movl %eax,(%edx)	#Coloca num1 no valor apontado por smaller
	
.end:
	addl %ecx,%eax		#Soma os dois numeros
	#Epilogue
	movl %ebp, %esp 	# restore the previous stack pointer ("clear" the stack)
	popl %ebp 			# restore the previous stack frame pointer
	ret
