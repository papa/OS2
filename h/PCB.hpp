//
// Created by os on 4/27/22.
//

#ifndef PROJECT_BASE_V1_0_PCB_HPP
#define PROJECT_BASE_V1_0_PCB_HPP

#include "../lib/hw.h"

class PCB
{
private:
    static uint64 savedRegA4;

    using Body = void (*)(void*);

    PCB(Body body,  void* args, void* stack_space, uint64 timeSlice);
    ~PCB();

    void start();
    static void dispatch();
    static void sleep(time_t);

    static PCB* running;

    static uint64 timeSliceCounter;
    uint64 getTimeSlice() { return timeSlice;}

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    void setState(State s) {state = s;}
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    uint64 getTimeToSleep() {return timeToSleep;}

    static const uint64 THREAD_CREATE = 0x11;
    static const uint64 THREAD_EXIT = 0x12;
    static const uint64 THREAD_DISPATCH = 0x13;
    static const uint64 THREAD_MAKE_PCB = 0x14;
    static const uint64 THREAD_START = 0x15;
    static const uint64 THREAD_DEL_PCB = 0x16;
    static const uint64 TIME_SLEEP = 0x31;

    bool systemThread = false;

    static void initialize();

    bool isFinished();
    //next PCB in sleeping queue
    //or suspended queue
    PCB* nextPCB;

    static void threadCreateHandler();
    static void threadExitHandler();
    static void threadDispatchHandler();
    static void threadSleepHandler();
    static void threadStartHandler();
    static void threadMakePCBHandler();
    static void threadDelPCBHandler();

    uint64 sscratch;

    static PCB* consolePCB;
    static PCB* userPCB;

    uint64 timeSlice;

    uint64 timeToSleep = 0;

    typedef struct Context
    {
        uint64 pcbSP;
        uint64 ra;
    }Context;

    static void contextSwitch(PCB::Context* oldContext, PCB::Context* newContext);
    static void contextSwitchExiting(PCB::Context* newContext);

    static void runner();

    Body body;

    void* args;

    void* beginSP;

    State state;

    Context context;

    bool retFromClosedSem = false;

    friend class KConsole;
    friend class Scheduler;
    friend class SleepPCBList;
    friend class KSemaphore;
    friend class Riscv;
    friend class MemoryAllocator;
};


#endif //PROJECT_BASE_V1_0_PCB_HPP
