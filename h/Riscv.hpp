//
// Created by os on 4/27/22.
//

#ifndef PROJECT_BASE_V1_0_RISCV_HPP
#define PROJECT_BASE_V1_0_RISCV_HPP

#include "../lib/hw.h"
#include "../test/userMain.hpp"

class Riscv
{
public:
    static void kernelMain();
private:
    static bool kernelMainCalled;
    static void changePrivMode();

    static void initSystem();
    static void endSystem();

    static void userMainWrapper(void* p);

    static void enableInterrupts();

    static void disableTimerInterrupts();

    static void disableInterrupts();

    static void idleRiscv(void* arg);

    static void pushRegisters();
    static void popRegisters();

    static uint64 r_scause();
    static void w_scause(uint64 scause);

    static uint64 r_sepc();
    static void w_sepc(uint64 sepc);

    static uint64 r_stvec();
    static void w_stvec(uint64 stvec);

    static uint64 r_stval();
    static void w_stval(uint64 stval);

    static bool finishSystem;

    enum BitMaskSip
    {
        SIP_SSIP = (1 << 1),
        SIP_STIP = (1 << 5),
        SIP_SEIP = (1 << 9),
    };

    static void ms_sip(uint64 mask);

    static void mc_sip(uint64 mask);

    static uint64 r_sip();

    static void w_sip(uint64 sip);

    enum BitMaskSstatus
    {
        SSTATUS_SIE = (1 << 1),
        SSTATUS_SPIE = (1 << 5),
        SSTATUS_SPP = (1 << 8),
    };

    static void w_a0_sscratch();

    static void ms_sstatus(uint64 mask);

    static void mc_sstatus(uint64 mask);

    static void mc_sie(uint64 mask);

    static void ms_sie(uint64 mask);

    static uint64 r_sstatus();

    static void w_sstatus(uint64 sstatus);

    static uint64 r_sie();
    static void w_sie(uint64 sie);
    static void popSppSpie();

    static void supervisorTrap();
    static void handleSupervisorTrap();

    static const uint64 bntOne = 1UL << 63;;
    static const uint64 bntZero = 0UL;
    static const uint64 timerInterrupt = bntOne + 1UL;
    static const uint64 hwInterrupt = bntOne + 9UL;
    static const uint64 operationInterrupt = bntZero + 2UL;
    static const uint64 addrReadInterrupt = bntZero + 5UL;
    static const uint64 addrWriteInterrupt = bntZero + 7UL;
    static const uint64 ecallUserInterrupt = bntZero + 8UL;
    static const uint64 ecallSystemInterupt = bntZero + 9UL;

    static uint64 totalTime;

    friend class PCB;
    friend class Scheduler;
    friend class SleepPCBList;
    friend class KSemaphore;
    friend class KConsole;
    friend class MemoryAllocator;
};

inline void Riscv::mc_sie(uint64 mask)
{
    __asm__ volatile("csrc sie, %0" : :"r"(mask));
}

inline uint64 Riscv::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    return scause;
}

inline void Riscv::w_scause(uint64 scause) {
    __asm__ volatile("csrw scause, %0" : :"r"(scause));
}

inline uint64 Riscv::r_sepc() {
    uint64 volatile sepc;
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    return sepc;
}

inline void Riscv::w_sepc(uint64 sepc) {
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
}

inline uint64 Riscv::r_stvec() {
    uint64 volatile stvec;
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
}

inline uint64 Riscv::r_stval() {
    uint64 volatile stval;
    __asm__ volatile("csrr %0, stval" : "=r"(stval));
    return stval;
}

inline void Riscv::w_sie(uint64 sie)
{
    __asm__ volatile("csrw sie, %0" : :"r"(sie));
}

inline void Riscv::w_stval(uint64 stval) {
    __asm__ volatile("csrw stval, %0" : :"r"(stval));
}

inline void Riscv::ms_sip(uint64 mask) {
    __asm__ volatile("csrs sip, %0" : :"r"(mask));
}

inline void Riscv::mc_sip(uint64 mask) {
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
}

inline uint64 Riscv::r_sie()
{
    uint64 volatile sie;
    __asm__ volatile("csrr %0, sip" : "=r"(sie));
    return sie;
}

inline void Riscv::ms_sie(uint64 mask)
{
    __asm__ volatile("csrs sie, %0" : :"r"(mask));
}

inline uint64 Riscv::r_sip() {
    uint64 volatile sip;
    __asm__ volatile("csrr %0, sip" : "=r"(sip));
    return sip;
}

inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    return sstatus;
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
}

#endif //PROJECT_BASE_V1_0_RISCV_HPP
