//
// Created by os on 6/3/22.
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    thread_delete_pcb((thread_t)p);
}