//
// Created by os on 1/9/23.
//
#include "../../h/syscall_c_kernel.hpp"


void thread_dispatch_kernel()
{
    __asm__ volatile("li a0, 0x13");
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


int thread_exit_kernel()
{
    __asm__ volatile("li a0, 0x12");

    __asm__ volatile("ecall");

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    return result;
}