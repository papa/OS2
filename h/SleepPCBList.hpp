//
// Created by os on 5/11/22.
//

#ifndef PROJECT_BASE_V1_0_SLEEPPCBLIST_HPP
#define PROJECT_BASE_V1_0_SLEEPPCBLIST_HPP

#include "PCB.hpp"

class SleepPCBList
{
private:
    static PCB* sleepingPCBHead;

    static void insertSleepingPCB();
    static void tryToWakePCBs();

    friend class PCB;
    friend class Scheduler;
    friend class KConsole;
    friend class KSemaphore;
    friend class Riscv;
    friend class MemoryAllocator;
};
#endif //PROJECT_BASE_V1_0_SLEEPPCBLIST_HPP
