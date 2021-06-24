.section .text
    .global approved_semester # int approved_semester(group *g)
    approved_semester:
        # Prologue
        pushl %ebp
        movl %esp, %ebp
        subl $8, %esp
        pushl %ebx

        movl 8(%ebp), %edx      # pointer to group *g
        movl (%edx), %ebx       # number of students
        addl $4, %edx           # moves to char array (int)
        movl (%edx), %edx       # moves char array pointer to %edx
        movl $0, %ecx           
        movl $0, %eax           # result

        loop:
            cmpl $0, %ebx
            je end
            movb (%edx), %cl
            movl $8, -4(%ebp)
            movl $0, -8(%ebp)
            
        loop2:
            cmpl $0, -4(%ebp)
            je next_it
            salb %cl
            jb positive
            decl -4(%ebp)
            jmp loop2

        positive:
            incl -8(%ebp)
            decl -4(%ebp)
            jmp loop2

        next_it:
            incl %edx
            cmpl $5, -8(%ebp)
            jge passed
            decl %ebx
            jmp loop

        passed:
            incl %eax
            decl %ebx
            jmp loop

        end:
            # Epilogue
            popl %ebx
            movl %ebp, %esp
            popl %ebp
            ret