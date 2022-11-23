//
// Created by os on 6/3/22.
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    sem_close((sem_t)p);
}
