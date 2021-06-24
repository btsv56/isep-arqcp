.section .text
    .global fill_s2 # void fill_s2(s2 *s, short vw[3], int vj, char vc[3])
    fill_s2:
        # Prologue
        pushl %ebp
        movl %esp, %ebp
        pushl %ebx

        movl 8(%ebp), %eax # s2 *s

        movl 12(%ebp), %edx # short vw[3]
        movl $3, %ebx # counter

        loop1:
            cmpl $0, %ebx
            je parm23
            movw (%edx), %cx
            movw %cx, (%eax)
            addl $2, %eax
            addl $2, %edx
            decl %ebx
            jmp loop1

        parm23:
            addl $2, %eax
            movl 16(%ebp), %edx     # int vj
            movl %edx, (%eax)
            addl $4, %eax
            movl 20(%ebp), %edx     # char vc[3]
            movl $3, %ebx

        loop2:
            cmpl $0, %ebx
            je end
            movb (%edx), %cl
            movb %cl, (%eax)
            incl %eax
            incl %edx
            decl %ebx
            jmp loop2

        end:
            # Prologue
            popl %ebx
            movl %ebp, %esp
            popl %ebp
            ret