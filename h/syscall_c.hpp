//
// Created by os on 4/8/22.
//

#ifndef PROJECT_BASE_V1_0_SYSCALL_C_HPP
#define PROJECT_BASE_V1_0_SYSCALL_C_HPP

#include "../lib/hw.h"
#include "_thread.hpp"
#include "_sem.hpp"

void * mem_alloc(size_t size);

int mem_free(void*);

typedef _thread* thread_t;
int thread_create(thread_t*, void (*start_routine)(void*), void*);

int thread_exit();

void thread_dispatch();

typedef _sem* sem_t;
int sem_open(sem_t* handle, unsigned int x);

int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

int time_sleep(uint64 time);

int thread_start(void* p);

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg);

int thread_delete_pcb(thread_t handle);

char getc();

void putc(char c);

char sysCallGetCharOutput();

#endif //PROJECT_BASE_V1_0_SYSCALL_C_HPP
