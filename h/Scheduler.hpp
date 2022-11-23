//
// Created by os on 4/27/22.
//

#ifndef PROJECT_BASE_V1_0_SCHEDULER_HPP
#define PROJECT_BASE_V1_0_SCHEDULER_HPP

#include "MemoryAllocator.hpp"

class PCB;

class Scheduler
{
private:
    static void put(PCB* pcb);
    static PCB* get();

    void* operator new(size_t size);
    void operator delete(void *p);

    static int getSize();

    static void print();

    static PCB* schedulerPCBHead;
    static PCB* schedulerPCBTail;

    friend class PCB;
    friend class KConsole;
    friend class SleepPCBList;
    friend class KSemaphore;
    friend class Riscv;
    friend class MemoryAllocator;
};

#endif //PROJECT_BASE_V1_0_SCHEDULER_HPP
