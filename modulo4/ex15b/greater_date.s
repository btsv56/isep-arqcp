.section .text
	.global greater_date # int greater_date(int date1, int date2)
	greater_date:
		# prologue
		pushl %ebp 											# save previous stack frame pointer
		movl %esp, %ebp 									# the stack frame pointer for sum function

		movl 8(%ebp), %edx 									# moves date1 to %edx
		movl 12(%ebp), %ecx 								# moves date2 to %ecx

		andl $0b111111111111111100000000, %edx 				# AND's date1 with year mask
		andl $0b111111111111111100000000, %ecx				# AND's date2 with year mask
		cmpl %ecx, %edx										# compares year1 with year2
		jg date1											# jumps to date1 if year1>year2
		jl date2											# jumps to date2 otherwise

		movl 8(%ebp), %edx 									# moves date1 again
		movl 12(%ebp), %ecx 								# moves date2 again

		andl $0b11111111000000000000000000000000, %edx 		# AND's date1 with month mask
		andl $0b11111111000000000000000000000000, %ecx		# AND's date2 with month mask
		cmpl %ecx, %edx										# compares month1 with month2
		jg date1											# jumps to date1 if month1>month2
		jl date2											# jumps to date2 otherwise

		movl 8(%ebp), %edx 									# moves dates again
		movl 12(%ebp), %ecx

		andl $0b11111111, %edx 								# AND's date1 with day mask
		andl $0b11111111, %ecx								# AND's date2 with day mask
		cmpl %ecx, %edx										# compares day1 with day2
		jg date1											# jumps to date1 if day1>day2
		jl date2											# jumps to date2 otherwise

		date1:
			movl 8(%ebp), %eax								# moves date1 to %eax
			jmp end											# jumps to end

		date2:
			movl 12(%ebp), %eax 							# moves date2 to %eax

		end:
			# epilogue
			movl %ebp, %esp 			# restore the previous stack pointer ("clear" the stack)
			popl %ebp 					# restore the previous stack frame pointer
			ret