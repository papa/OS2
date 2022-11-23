//
// Created by os on 4/9/22.
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    __asm__ volatile("li a0, 1");

    __asm__ volatile("ecall"); // system call

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));

    return (void*)allocatedAddr;
}

int mem_free(void* p)
{
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    __asm__ volatile("li a0, 2");

    __asm__ volatile("ecall"); // system call

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));

    return result;
}

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));


    __asm__ volatile("ecall");

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));

    return result;
}

void thread_dispatch()
{
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile("ecall");
}

int thread_exit()
{
    __asm__ volatile("li a0, 0x12");

    __asm__ volatile("ecall");

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    return result;
}

int sem_open(sem_t* handle, unsigned int x)
{
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    __asm__ volatile("li a0, 0x21");

    __asm__ volatile("ecall");

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    return result;
}


int sem_close(sem_t handle)
{
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    __asm__ volatile("li a0, 0x22");

    __asm__ volatile("ecall");

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    return result;
}

int sem_wait(sem_t id)
{
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    __asm__ volatile("li a0, 0x23");

    __asm__ volatile("ecall");

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    return result;
}

int sem_signal(sem_t id)
{
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    __asm__ volatile("li a0, 0x24");

    __asm__ volatile("ecall");

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    return result;
}

int time_sleep(uint64 time)
{
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    __asm__ volatile("li a0, 0x31");

    __asm__ volatile("ecall");

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    return result;
}

int thread_start(void* p)
{
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    __asm__ volatile("li a0, 0x15");

    __asm__ volatile("ecall");

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    return result;
}

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));

    __asm__ volatile("ecall");

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    return result;
}

char getc()
{
    __asm__ volatile("li a0, 0x41");

    __asm__ volatile("ecall");

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    return (char)result;
}

void putc(char c)
{
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    __asm__ volatile("li a0, 0x42");
    __asm__ volatile("ecall");
}

char sysCallGetCharOutput()
{
    __asm__ volatile("li a0, 0x43");

    __asm__ volatile("ecall");

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    return (char)result;
}

int thread_delete_pcb(thread_t handle)
{
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    __asm__ volatile("li a0, 0x16");
    __asm__ volatile("ecall");

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    return (char)result;
}
