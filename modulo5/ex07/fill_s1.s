.section .text
    .global fill_s1 # void fill_s1(s1 *s, int vi, char vc, int vj, char vd)
    fill_s1:
        # Prologue
        pushl %ebp
        movl %esp, %ebp

        movl 8(%ebp), %eax     # s1 *s
        
        movl 12(%ebp), %edx    # int vi
        movl %edx, (%eax)
        addl $4, %eax

        movb 16(%ebp), %dl    # char vc
        movb %dl, (%eax)
        addl $4, %eax

        movl 20(%ebp), %edx    # int vj
        movl %edx, (%eax)
        addl $4, %eax

        movb 24(%ebp), %dl    # char vd
        movb %dl, (%eax)

        # Epilogue
        movl %ebp, %esp
        popl %ebp
        ret