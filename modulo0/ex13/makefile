# variaveis

INCLUDES = line.h multiplication_table_n.h multiplication_table.h
SOURCES = line.c multiplication_table_n.c multiplication_table.c main.c
OBJFILES = line.o multiplication_table_n.o multiplication_table.o main.o
EXEC = prog_multiplication

# Suffix rules

.SUFFIXES : .c .o

.c .o:
	gcc -Wall -g -c $<
	
${EXEC}: ${OBJFILES}
	gcc -Wall -g ${OBJFILES} -o ${EXEC}
	
run: ${EXEC}
	./${EXEC}
	
clean:
	rm -f ${OBJFILES} ${EXEC}
