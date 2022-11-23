//
// Created by os on 5/19/22.
//
#include "../h/KConsole.hpp"
#include "../test/printing.hpp"
#include "../h/Riscv.hpp"

uint64 KConsole::inputHead = 0;
uint64 KConsole::inputTail = 0;
uint64 KConsole::outputHead = 0;
uint64 KConsole::outputTail = 0;
KSemaphore* KConsole::hasCharactersOutput = 0;
KSemaphore* KConsole::hasCharactersInput = 0;
uint64 KConsole::pendingGetc = 0;
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    hasCharactersInput = new KSemaphore(0);
    hasCharactersOutput = new KSemaphore(0);
}

//extern const uint64 CONSOLE_STATUS;
//extern const uint64 CONSOLE_TX_DATA;
//extern const uint64 CONSOLE_RX_DATA;
//todo
void KConsole::getCharactersFromConsole(void* p)
{
    while(true)
    {
        uint64 x = CONSOLE_STATUS;
        __asm__ volatile("mv a0, %0"::"r"(x));
        __asm__ volatile("lb a1, 0(a0)");
        uint64 operation;
        __asm__ volatile("mv %0, a1" :  "=r"(operation));
        if(operation & STATUS_READ_MASK)
        {
            x = CONSOLE_TX_DATA;
            __asm__ volatile("mv a0, %0"::"r"(x));
            __asm__ volatile("lb a1,0(a0)");
            char c;
            __asm__ volatile("mv %0, a1" :  "=r"(c));

            putCharacterInput(c);
            putCharacterOutput(c);
        }
        else
            break;
    }
}

//todo
void KConsole::sendCharactersToConsole(void* p)
{
    while(true)
    {
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
                thread_exit();

            uint64 x = CONSOLE_STATUS;
            __asm__ volatile("mv a0, %0"::"r"(x));
            __asm__ volatile("lb a1, 0(a0)");
            uint64 operation;
            __asm__ volatile("mv %0, a1" :  "=r"(operation));
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
            {
                char volatile c = sysCallGetCharOutput();
                pendingPutc--;
                x = CONSOLE_RX_DATA;
                __asm__ volatile("mv a0, %0"::"r"(x));
                __asm__ volatile("mv a1, %0" :  :"r"((uint64)c));
                __asm__ volatile("sb a1,0(a0)");
            }
            else
            {
                thread_dispatch();
            }
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
        return;
    inputBuffer[inputTail] = c;
    inputTail = (inputTail+1)%bufferSize;
    hasCharactersInput->signal();
}

char KConsole::getCharacterInput()
{
    hasCharactersInput->wait();
    if(inputHead == inputTail)
        return -1;
    char c = inputBuffer[inputHead];
    inputHead = (inputHead+1)%bufferSize;
    return c;
}

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
        return;
    pendingPutc++;
    outputBuffer[outputTail] = c;
    outputTail = (outputTail+1)%bufferSize;
    hasCharactersOutput->signal();
}

char KConsole::getCharacterOutput()
{
    hasCharactersOutput->wait();
    if(outputHead == outputTail)
        return -1;
    char c = outputBuffer[outputHead];
    outputHead = (outputHead+1)%bufferSize;
    return c;
}

void KConsole::putcHandler()
{
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    putCharacterOutput((char)ch);
}

void KConsole::getcHandler()
{
    pendingGetc++;
    char ch;
    ch = getCharacterInput();
    if(ch!=0x01b)
        putCharacterOutput(ch);

    if(ch==13)
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    Riscv::w_a0_sscratch();
}

bool KConsole::outputBufferEmpty()
{
    return pendingPutc == 0;
}

void KConsole::getCharHandler()
{
    char ch;
    ch = getCharacterOutput();
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    Riscv::w_a0_sscratch();
}

void KConsole::trapPrintString(const char *string)
{
    while (*string != '\0')
    {
        KConsole::putCharacterOutput(*string);
        string++;
    }
}

void KConsole::printInt(int xx, int base, int sgn)
{
    char digits[] = "0123456789ABCDEF";
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0) {
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    do {
        buf[i++] = digits[x % base];
    }while((x /= base) != 0);
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
        KConsole::putCharacterOutput(buf[i]);
}
