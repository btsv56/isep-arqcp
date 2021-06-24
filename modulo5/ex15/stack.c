#include <stdio.h>
#include <stdlib.h>
//Simula a stack
typedef struct Values
{
    struct Values *ptr_behind;
    int value;
} Value;

struct
{
    Value *ptr_last;
    char size;
} stack;


int verifyStack()
{
    return stack.size;
}

void size(){
    printf("Size is %hhd.", stack.size);
    if (stack.size == 0)
    {
        printf("Stack is empty.\n");
    } else {
        printf("\n");
    }
}

void push(int value)
{
    Value *v = malloc(8);
    if (v == NULL)
    {
        printf("ERROR: Can't push. There's not enough memory available.\n");
    }
    else
    {
        v->ptr_behind = stack.ptr_last;
        v->value = value;
        stack.ptr_last = v;
        stack.size++;
    }
}

int pop()
{
    int value = NULL;
    if (verifyStack())
    {
        Value *v = stack.ptr_last;
        stack.ptr_last = v->ptr_behind;
        value = v->value;
        free(v);
        stack.size--;
        return value;
    } else {
        size();
    }
    return value;
}
