//
// Created by os on 4/8/22.
//

#include "../../h/syscall_cpp.hpp"

struct ArgsPeriodic
{
    void* pt;
    uint64 time;
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
};

//general
void * operator new(size_t size)
{
    return mem_alloc(size);
}

void operator delete(void * p)
{
    mem_free(p);
}

//Thread
int Thread::start()
{
    if(myHandle != nullptr)
    {
        return thread_start(myHandle);
    }
    else
    {
        return -1;
    }

}

void Thread::dispatch() {
    thread_dispatch();
}

void Thread::sleep(time_t time)
{
    time_sleep(time);
}

Thread::Thread(void (*body)(void *), void *args)
{
    myHandle = nullptr;
    thread_make_pcb(&myHandle, body, args);
}

Thread::Thread()
{
    myHandle = nullptr;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    Thread* thr = (Thread*)t;
    thr->run();
}

Thread::~Thread()
{
    delete myHandle;
}

//Semaphore

int Semaphore::wait()
{
    if(myHandle == nullptr)
        return -1;
    return sem_wait(myHandle);
}

Semaphore::Semaphore(unsigned int init)
{
    int retval = sem_open(&myHandle, init);
    if(retval != 0)
    {
        myHandle = nullptr;
    }
}

int Semaphore::signal()
{
    if(myHandle == nullptr)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    delete myHandle;
}

//Console

char Console::getc()
{
    return ::getc();
}

void Console::putc(char c)
{
    return ::putc(c);
}

//PeriodicThread

PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
{

}

void PeriodicThread::runner(void* arg)
{
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    uint64 time = ((ArgsPeriodic*)arg)->time;

    while(true)
    {
        pThread->periodicActivation();
        Thread::sleep(time);
    }
}