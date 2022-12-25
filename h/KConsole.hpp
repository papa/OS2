//
// Created by os on 5/19/22.
//

#ifndef PROJECT_BASE_V1_0_KCONSOLE_HPP
#define PROJECT_BASE_V1_0_KCONSOLE_HPP

#include "KSemaphore.hpp"

class KConsole
{
public:
    //TODO
    //this is public because of buddy, change it possibly
    //or just remove printing for buddy
    static void trapPrintString(const char* string);
    static void trapPrintInt(size_t xx, int base=10, int sgn=0);
    static void trapPrintStringInt(const char* string, size_t xx, int base = 10);
private:
    static KSemaphore* hasCharactersInput;
    static KSemaphore* hasCharactersOutput;

    static uint64 inputHead;
    static uint64 outputHead;
    static uint64 inputTail;
    static uint64 outputTail;

    static const uint64 bufferSize = 8192;

    static char inputBuffer[bufferSize];
    static char outputBuffer[bufferSize];

    static uint64 pendingGetc;
    static uint64 pendingPutc;

    static bool outputBufferEmpty();

    static void putCharacterInput(char c);
    static char getCharacterInput();

    static void putCharacterOutput(char c);
    static char getCharacterOutput();

    static void initialize();

    static void getCharHandler();

    static void getCharactersFromConsole();

    static void sendCharactersToConsole(void* p);

    static const uint64 STATUS_READ_MASK = 1UL;
    static const uint64 STATUS_WRITE_MASK = 1UL << 5UL;
    static const uint64 CONSOLE_GETC = 0x41;
    static const uint64 CONSOLE_PUTC = 0x42;
    static const uint64 CONSOLE_GET_CHAR = 0x43;

    static void putcHandler();
    static void getcHandler();

    friend class PCB;
    friend class Scheduler;
    friend class SleepPCBList;
    friend class KSemaphore;
    friend class Riscv;
    friend class MemoryAllocator;
};

#endif //PROJECT_BASE_V1_0_KCONSOLE_HPP
