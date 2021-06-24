.section .text
    .global update_grades       # void update_grades(Student *s, int *new_grades)
    update_grades:
        # Prologue
        pushl %ebp              # save previous stack frame pointer
	    movl %esp, %ebp         # the stack frame pointer for sum function
        pushl %ebx

        movl 8(%ebp), %eax      # moves Student *s to %eax
        addl $4, %eax           # accesses grades
        movl 12(%ebp), %edx     # moves int *new_grades to %edx
        movl $10, %ecx          # moves 10 to %ecx (counter)

        loop:
            cmpl $0, %ecx
            je end
            movl (%edx), %ebx
            movl %ebx, (%eax)
            addl $4, %eax
            addl $4, %edx
            decl %ecx
            jmp loop

        end:
            #Epilogue
            popl %ebx
            movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
            popl %ebp               # restore the previous stack frame pointer
            ret
        