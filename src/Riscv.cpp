//
// Created by os on 4/27/22.
//

#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/PCB.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/SleepPCBList.hpp"
#include "../h/KConsole.hpp"
#include "../h/Scheduler.hpp"

uint64 Riscv::totalTime = 0;
bool Riscv::finishSystem = false;
bool Riscv::kernelMainCalled = false;

void Riscv::initSystem()
{
    w_stvec((uint64)&Riscv::supervisorTrap);
    PCB::initialize();
    KConsole::initialize();
}

void Riscv::endSystem()
{
    disableInterrupts();
    finishSystem = true;
    PCB* pcb = 0;
    while(true)
    {
        pcb = Scheduler::get();
        if(pcb == 0) break;
    }
    Scheduler::put(PCB::consolePCB);
    KConsole::pendingGetc = 0;
    enableInterrupts();
    while(!PCB::consolePCB->isFinished())
    {
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    ms_sstatus(Riscv::SSTATUS_SIE);
}

void Riscv::disableInterrupts()
{
    mc_sstatus(Riscv::SSTATUS_SIE);
}

void Riscv::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::handleSupervisorTrap()
{
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));

    uint64 scause = Riscv::r_scause();

    switch(scause)
    {
        case timerInterrupt:
        {
            uint64 volatile sepc = Riscv::r_sepc();
            uint64 volatile sstatus = Riscv::r_sstatus();
            mc_sip(Riscv::SIP_SSIP);
            //KConsole::trapPrintString("timerInterrupt\n");
            //static uint64 total = 0;
            totalTime++;
            //KConsole::trapPrintInt(totalTime);

            PCB::timeSliceCounter++;
            SleepPCBList::tryToWakePCBs();
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
            {
                PCB::timeSliceCounter = 0;
                PCB::dispatch();
            }

            Riscv::w_sstatus(sstatus);
            Riscv::w_sepc(sepc);
            changePrivMode();
            break;
        }
        case hwInterrupt:
        {
            uint64 x = CONSOLE_STATUS;
            __asm__ volatile("mv a0, %0"::"r"(x));
            __asm__ volatile("lb a1, 0(a0)");
            uint64 operation;
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
            if(operation & KConsole::STATUS_READ_MASK)
            {
                x = CONSOLE_TX_DATA;
                __asm__ volatile("mv a0, %0"::"r"(x));
                __asm__ volatile("lb a1,0(a0)");
                char c;
                __asm__ volatile("mv %0, a1" :  "=r"(c));
                if(KConsole::pendingGetc > 0)
                {
                    KConsole::pendingGetc--;
                    KConsole::putCharacterInput(c);
                    //KConsole::putCharacterOutput(c);
                }
            }

            plic_complete(plic_claim());

            break;
        }
        case operationInterrupt:
        {
            //trapPrintString("operation interrupt\n");
            PCB::threadExitHandler();
            break;
        }
        case addrReadInterrupt:
        {
            //trapPrintString("read interrupt\n");
            PCB::threadExitHandler();
            break;
        }
        case addrWriteInterrupt:
        {
            //trapPrintString("write interrupt\n");
            PCB::threadExitHandler();
            break;
        }
        case ecallSystemInterupt:
        case ecallUserInterrupt:
        {
            uint64 operation;
            __asm__ volatile("mv %0, a0" :  "=r"(operation));

            uint64 volatile sepc = Riscv::r_sepc() + 4;
            uint64 volatile sstatus = Riscv::r_sstatus();

            switch(operation)
            {
                case MemoryAllocator::MEM_ALLOC:
                    MemoryAllocator::memAllocHandler();
                    break;
                case MemoryAllocator::MEM_FREE:
                    MemoryAllocator::memFreeHandler();
                    break;
                case PCB::THREAD_MAKE_PCB:
                    PCB::threadMakePCBHandler();
                    break;
                case PCB::THREAD_CREATE:
                    PCB::threadCreateHandler();
                    break;
                case PCB::THREAD_START:
                    PCB::threadStartHandler();
                    break;
                case PCB::THREAD_DISPATCH:
                    PCB::threadDispatchHandler();
                    break;
                case PCB::THREAD_EXIT:
                    PCB::threadExitHandler();
                    break;
                case PCB::TIME_SLEEP:
                    PCB::threadSleepHandler();
                    break;
                case PCB::THREAD_DEL_PCB:
                     PCB::threadDelPCBHandler();
                     break;
                case KSemaphore::SEM_OPEN:
                    KSemaphore::semOpenHandler();
                    break;
                case KSemaphore::SEM_WAIT:
                    KSemaphore::semWaitHandler();
                    break;
                case KSemaphore::SEM_SIGNAL:
                    KSemaphore::semSignalHandler();
                    break;
                case KSemaphore::SEM_CLOSE:
                    KSemaphore::semCloseHandler();
                    break;
                case KConsole::CONSOLE_GETC:
                    KConsole::getcHandler();
                    break;
                case KConsole::CONSOLE_PUTC:
                    KConsole::putcHandler();
                    break;
                case KConsole::CONSOLE_GET_CHAR:
                    KConsole::getCharHandler();
                    break;
            }

            Riscv::w_sstatus(sstatus);
            Riscv::w_sepc(sepc);
            changePrivMode();
            break;
        }
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    kernelMainCalled = true;

    initSystem();

    //disableTimerInterrupts();
    enableInterrupts();

    while(!PCB::userPCB->isFinished())
    {
        thread_dispatch();
    }

    //printString("End...\n");
    endSystem();
}

void Riscv::userMainWrapper(void* )
{
    userMain();
}

void Riscv::disableTimerInterrupts()
{
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
}

void Riscv::idleRiscv(void* p)
{
    while(true)
    {

    }
}

void Riscv::w_a0_sscratch()
{
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    __asm__ volatile("sd a0, 80(a1)");
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
}

void Riscv::changePrivMode()
{
    if(PCB::running->systemThread)
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}

