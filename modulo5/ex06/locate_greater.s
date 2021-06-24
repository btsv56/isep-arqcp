.section .text
    .global locate_greater          # int locate_greater(Student*s, int minimum, int *greater_grades)
    locate_greater:
        # Prologue
        pushl %ebp                  # save previous stack frame pointer
	    movl %esp, %ebp             # the stack frame pointer for sum function
        subl $4, %esp
        pushl %ebx

        movl 8(%ebp), %edx          # moves Student *s to %edx
        addl $4, %edx               # accesses grades
        movl 12(%ebp), %ebx         # moves int minimum to %ecx
        movl %ebx, -4(%ebp)         
        movl 16(%ebp), %ecx         # moves int *greater_grades to %ecx
        movl $10, %ebx              # counter
        movl $0, %eax

        loop:
            cmpl $0, %ebx
            je end
            pushl %ebx
            movl (%edx), %ebx
            cmpl -4(%ebp), %ebx
            jg add_grade
            popl %ebx
            addl $4, %edx
            decl %ebx
            jmp loop

        add_grade:
            movl %ebx, (%ecx)
            incl %eax
            popl %ebx
            addl $4, %edx
            addl $4, %ecx
            decl %ebx
            jmp loop

        end:
            #Epilogue
            popl %ebx
            movl %ebp, %esp         # restore the previous stack pointer ("clear" the stack)
            popl %ebp               # restore the previous stack frame pointer
            ret
            