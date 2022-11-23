//
// Created by os on 5/2/22.
//

#ifndef PROJECT_BASE_V1_0_KSEMAPHORE_HPP
#define PROJECT_BASE_V1_0_KSEMAPHORE_HPP

#include "PCB.hpp"

class KSemaphore
{
private:
    KSemaphore(int val = 0);
    ~KSemaphore();

    uint64 wait();
    uint64 signal();

    PCB* headBlocked;
    PCB* tailBlocked;

    void* operator new(size_t size);
    void operator delete(void *p);

    static const uint64 SEM_OPEN = 0x21;
    static const uint64 SEM_CLOSE = 0x22;
    static const uint64 SEM_WAIT = 0x23;
    static const uint64 SEM_SIGNAL = 0x24;

    static void semOpenHandler();
    static void semWaitHandler();
    static void semSignalHandler();
    static void semCloseHandler();

    int val, beginVal;

    void block();
    void unblock();

    PCB* getFirstBlocked();
    void removeFirstBlocked();
    void addToBlocked(PCB* pcb);

    friend class PCB;
    friend class Scheduler;
    friend class SleepPCBList;
    friend class KConsole;
    friend class Riscv;
    friend class MemoryAllocator;
};

#endif //PROJECT_BASE_V1_0_KSEMAPHORE_HPP
