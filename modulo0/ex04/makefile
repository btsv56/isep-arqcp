INCLUDES = count.h
SOURCES = count.c main.c
OBJFILES = count.o main.o
EXEC = ex04

.SUFFIXES: .c .o

.c .o:
	gcc -Wall -g -c $< -m32
	
${EXEC}: ${OBJFILES}
	gcc -Wall -g ${OBJFILES} -o ${EXEC}
	
run: ${EXEC}
	./${EXEC}
	
clean:
	rm -f ${OBJFILES} ${EXEC}
