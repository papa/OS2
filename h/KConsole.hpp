//
// Created by os on 5/19/22.
//

#ifndef PROJECT_BASE_V1_0_KCONSOLE_HPP
#define PROJECT_BASE_V1_0_KCONSOLE_HPP

#include "KSemaphore.hpp"

class KConsole
{
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

    static void getCharactersFromConsole(void* p);

    static void sendCharactersToConsole(void* p);

    static const uint64 STATUS_READ_MASK = 1UL;
    static const uint64 STATUS_WRITE_MASK = 1UL << 5UL;
    static const uint64 CONSOLE_GETC = 0x41;
    static const uint64 CONSOLE_PUTC = 0x42;
    static const uint64 CONSOLE_GET_CHAR = 0x43;

    static void putcHandler();
    static void getcHandler();

    static void trapPrintString(const char* string);
    static void printInt(int xx, int base=10, int sgn=0);

    friend class PCB;
    friend class Scheduler;
    friend class SleepPCBList;
    friend class KSemaphore;
    friend class Riscv;
    friend class MemoryAllocator;
};

#endif //PROJECT_BASE_V1_0_KCONSOLE_HPP
