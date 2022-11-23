//
// Created by os on 5/2/22.
//

#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
{
    this->val = this->beginVal = val;
    headBlocked = tailBlocked = 0;
}

uint64 KSemaphore::wait()
{
    PCB::running->retFromClosedSem = false;
    if(--val < 0)
        block();

    return 0;
}

uint64 KSemaphore::signal() {
    if(++val <= 0)
        unblock();

    return 0;
}

void KSemaphore::semOpenHandler()
{
    uint64 val;
    KSemaphore** semaphoreHandle;
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    __asm__ volatile("mv %0, a2" : "=r"(val));

    KSemaphore* newSem = new KSemaphore(val);

    (*semaphoreHandle) = newSem;

    if(newSem == 0)
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
            __asm__ volatile("li a0, 0");
    Riscv::w_a0_sscratch();
}

KSemaphore::~KSemaphore()
{
    while(getFirstBlocked() != 0)
    {
        PCB* pcb = getFirstBlocked();
        removeFirstBlocked();
        pcb->retFromClosedSem = true;
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    pcb->nextPCB = 0;
    if(headBlocked == 0)
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
        tailBlocked = pcb;
    }
}

void KSemaphore::block()
{
    PCB::running->setState(PCB::SUSPENDED);
    addToBlocked(PCB::running);
    PCB::dispatch();
}

PCB* KSemaphore::getFirstBlocked()
{
   return headBlocked;
}

void KSemaphore::removeFirstBlocked()
{
    if(headBlocked == 0)
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    first->nextPCB = 0;
    if(headBlocked == 0)
        tailBlocked =0;
}

void KSemaphore::unblock() {
    PCB* fr = getFirstBlocked();
    removeFirstBlocked();
    if(fr != 0)
    {
        Scheduler::put(fr);
    }
}
void *KSemaphore::operator new(size_t size) {
    return MemoryAllocator::kmalloc(size);
}

void KSemaphore::operator delete(void *p)
{
    MemoryAllocator::kfree(p);
}

void KSemaphore::semWaitHandler()
{
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    kSem->wait();
    if(PCB::running->retFromClosedSem)
        __asm__ volatile("li a0, 0x1");
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
}

void KSemaphore::semSignalHandler() {
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    if (kSem == 0)
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
        __asm__ volatile("li a0, 0x0");
    }
    Riscv::w_a0_sscratch();
}

void KSemaphore::semCloseHandler()
{
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    delete kSem;
    __asm__ volatile("li a0, 0");
    Riscv::w_a0_sscratch();
}
