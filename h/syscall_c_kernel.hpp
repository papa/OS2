//
// Created by os on 1/9/23.
//

#ifndef PROJECT_BASE_SYSCALL_C_KERNEL_H
#define PROJECT_BASE_SYSCALL_C_KERNEL_H

#include "../lib/hw.h"

char sysCallGetCharOutput();
int thread_exit_kernel();
void thread_dispatch_kernel();

#endif //PROJECT_BASE_SYSCALL_C_KERNEL_H
