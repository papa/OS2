//
// Created by os on 4/27/22.
//

#include "../../h/Riscv.hpp"
#include "../../h/MemoryAllocator.hpp"
#include "../../h/PCB.hpp"
#include "../../h/syscall_cpp.hpp"
#include "../../h/SleepPCBList.hpp"
#include "../../h/KConsole.hpp"
#include "../../h/Scheduler.hpp"
#include "../../h/buddyTests.hpp"
#include "../../h/slabTests.hpp"
#include "../../h/PCBWrapperUser.hpp"
#include "../../h/syscall_c_kernel.hpp"

uint64 Riscv::totalTime = 0;
bool Riscv::finishSystem = false;
bool Riscv::kernelMainCalled = false;
kmem_cache_t * Riscv::pcbCache = nullptr;
kmem_cache_t * Riscv::semaphoreCache = nullptr;
void* Riscv::mainPMT = nullptr;
void* Riscv::riscvBuddy = nullptr;
extern char *kernelTextStart;
extern char *kernelDataStart;
extern char *userTextStart;
extern char *etext;

void Riscv::initMemoryAllocation()
{
    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;

    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    MemoryAllocator::initMemory(newStartAddr);

    //kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    //pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    //semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
}

void Riscv::initVirtualMemory()
{
    //size_t addr = (size_t)getNextBlockAddr((size_t)HEAP_START_ADDR);

    //size_t pmtSize = (1 << 9);
    //size_t descSize = 64;
    //size_t

}

void Riscv::initSystem()
{
    w_stvec((uint64)&Riscv::supervisorTrap);

    riscvBuddy = (void*)getBlockAddr((size_t)HEAP_START_ADDR);
    size_t heapStartBlock = getBlockAddr((size_t)HEAP_START_ADDR);

    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;

    void* newStartAddr = (void*)(heapStartBlock + numOfBlocks*BLOCK_NUM_OF_BYTES);
    MemoryAllocator::initMemory(newStartAddr);

    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);

    //initMemoryAllocation();
    PCB::initialize();
    KConsole::initialize();

    //KConsole::trapPrintStringInt("Buddy allocator: ", (size_t)riscvBuddy, 16);
    //printSlabAllocatorInfo();
    mainPMT = buddy_alloc((buddyAllocator*)riscvBuddy, 1);
    for(size_t i = 0; i < (1 << 9);i++)
        ((size_t*)mainPMT)[i] = 0;

    KConsole::trapPrintStringInt("main PMT ", (size_t)mainPMT,16);

    //printBuddyInfo((buddyAllocator*)riscvBuddy);

    //for(int i = 0; i < 20;i++)
    //    buddy_alloc((buddyAllocator*)riscvBuddy, 1);

//    for(size_t addr = 0x80000000; addr < (size_t)HEAP_START_ADDR;addr++)
//        addVirtualAddrInstr(addr);

    //printBuddyInfo((buddyAllocator*)riscvBuddy);

//    for(size_t addr = (size_t)HEAP_START_ADDR;addr < (size_t)HEAP_END_ADDR;addr+=4096)
//        addVirtualAddr(addr);

    uint64 uTextStart = (uint64)(&userTextStart);
    uint64 eText = (uint64)(&etext);
    uint64 kTextStart = (uint64)(&kernelTextStart);
    uint64 kDataStart = (uint64)(&kernelDataStart);

    for(uint64 i=0x80000000;i< uTextStart;i+=4096) {
        setVirtualAddr(i, 0x1,0xb);
    }

    for(uint64 i=uTextStart;i<eText;i+=4096) {
        setVirtualAddr(i, 0x1,0xb);
    }

    for(uint64 i = (uint64)(&etext); i<kTextStart;i+=4096){
        setVirtualAddr(i, 0x1,0x7);
    }

    for(uint64 i=(uint64)(&kernelTextStart);i<kDataStart;i+=4096) {
        setVirtualAddr(i, 0x1,0x1b); //todo
    }

    for(uint64 i=(uint64)&kernelDataStart;i<(uint64)HEAP_START_ADDR;i+=4096) {
        setVirtualAddr(i, 0x1,0x17);
    }

    for(uint64 i=(uint64)HEAP_START_ADDR;i<(uint64)newStartAddr;i+=4096) {
        setVirtualAddr(i, 0x1,0x7);
    }

    for(uint64 i = (uint64)newStartAddr;i<=(uint64)HEAP_END_ADDR;i+=4096){
        setVirtualAddr(i, 0x1,0x17);
    }


    setVirtualAddr((size_t)CONSOLE_RX_DATA,0x1,0xf);
    setVirtualAddr((size_t)CONSOLE_TX_DATA,0x1,0xf);
    setVirtualAddr((size_t)CONSOLE_STATUS,0x1,0xf);
    setVirtualAddr(0xc201004,0x1,0xf);


    Riscv::ms_sstatus(1<<18);
    size_t satp = ((size_t)1 << 63) | ((size_t)mainPMT >> 12);
    __asm__ volatile("csrw satp, %0" : :"r"(satp));
}

void Riscv::endSystem()
{
    disableInterrupts();
    //__asm__ volatile("csrw satp, 0");
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
        thread_dispatch_kernel();
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
    if(PCB::running->systemThread) {
        __asm__ volatile ("csrw sepc, ra");
        __asm__ volatile ("sret");
    }
    else
    {
        size_t ra = (size_t)&PCBWrapperUser::wrapperUser;
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
        __asm__ volatile ("sret");
    }
}

void Riscv::setVirtualAddr(size_t addr, size_t mask, size_t maskLeaf)
{
    size_t l2 = addr >> 30;
    size_t l1 = (addr >> 21) & (0x1ff);
    size_t l0 = (addr >> 12) & (0x1ff);
    //size_t offset = addr & 0xfff;
    size_t pmt2Desc = ((size_t*)mainPMT)[l2];
    void* pmt1 = nullptr;
    if(pmt2Desc == 0)
    {
        pmt1 = buddy_alloc((buddyAllocator*)riscvBuddy, 1);
        for(int i = 0; i < (1 << 9);i++)
        {
            ((size_t*)pmt1)[i] = 0;
        }
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
        ((size_t*)mainPMT)[l2] = newDesc;
    }
    else
    {
        pmt1 = (void*)((pmt2Desc >> 10) << 12);
    }
    size_t pmt1Desc = ((size_t*)pmt1)[l1];
    void* pmt0 = nullptr;
    if(pmt1Desc == 0)
    {
        pmt0 = buddy_alloc((buddyAllocator*)riscvBuddy, 1);
        for(int i = 0; i < (1 << 9);i++)
        {
            ((size_t*)pmt0)[i] = 0;
        }
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
        ((size_t*)pmt1)[l1] = newDesc;
    }
    else
    {
        pmt0 = (void*)((pmt1Desc >> 10) << 12);
    }

    size_t pmt0Desc = ((size_t*)pmt0)[l0];
    if(pmt0Desc == 0)
    {
        ((size_t*)pmt0)[l0] = ((addr >> 12) << 10) | maskLeaf;
    }
}

void Riscv::addVirtualAddr(size_t addr)
{
    setVirtualAddr(addr, 0x1, 0xf);
}

void Riscv::addVirtualAddrInstr(size_t addr)
{
    setVirtualAddr(addr, 0x1, 0xf);
}

void Riscv::handleSupervisorTrap()
{
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));

    uint64 scause = Riscv::r_scause();

    static const size_t storePF = 15;
    static const size_t loadPF = 13;
    static const size_t instrPF = 12;

    switch(scause)
    {
        case storePF:
        {
            size_t addrPF = 0;
            __asm__ volatile("csrr %0, stval":"=r"(addrPF));
            addVirtualAddr(addrPF);
        }
        case loadPF:
        {
            size_t addrPF = 0;
            __asm__ volatile("csrr %0, stval":"=r"(addrPF));
            addVirtualAddr(addrPF);
        }
        case instrPF:
        {
            //KConsole::trapPrintString("instr PF\n");
            size_t addrPF = 0;
            __asm__ volatile("csrr %0, stval":"=r"(addrPF));
            addVirtualAddrInstr(addrPF);
        }
        case timerInterrupt:
        {
            //KConsole::trapPrintString("timerInterrupt\n");
            uint64 volatile sepc = Riscv::r_sepc();
            uint64 volatile sstatus = Riscv::r_sstatus();
            mc_sip(Riscv::SIP_SSIP);
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
            KConsole::getCharactersFromConsole();
            plic_complete(plic_claim());
            break;
        }
        case operationInterrupt:
        {
            PCB::threadExitHandler();
            break;
        }
        case addrReadInterrupt:
        {
            PCB::threadExitHandler();
            break;
        }
        case addrWriteInterrupt:
        {
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

    testOS2();

    //enableInterrupts();

    //while(!PCB::userPCB->isFinished())
    //{
    //    thread_dispatch_kernel();
    //}

    endSystem();
}

void Riscv::disableTimerInterrupts()
{
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
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

