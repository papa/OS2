#include "../../h/buddyTests.hpp"
#include "../../h/KConsole.hpp"
#include "../../h/MemoryAllocator.hpp"

void buddyInitTest1()
{
    printBuddyInfo();
}

void buddyOnlyAllocsTest1()
{
    printBuddyInfo();
    buddy_alloc(1);
    printBuddyInfo();
    buddy_alloc(1);
    printBuddyInfo();
    buddy_alloc(1);
    printBuddyInfo();
    buddy_alloc(3);
    printBuddyInfo();
}

void buddyOnlyAllocsTest2()
{
    void* adr = buddy_alloc(100);
    if(adr == nullptr)
    {
        printBuddyInfo();
    }
}

void buddyAllocFreeTest1()
{
    printBuddyInfo();
    void* adr = buddy_alloc(1);
    printBuddyInfo();
    buddy_free(adr, 1);
    printBuddyInfo();

    adr = buddy_alloc(2);
    void* adr2 = buddy_alloc(3);
    printBuddyInfo();

    buddy_free(adr, 2);
    printBuddyInfo();
    adr = buddy_alloc(1);
    printBuddyInfo();

    buddy_free(adr2, 3);
    printBuddyInfo();
    buddy_free(adr, 1);
    printBuddyInfo();
}

void buddyTestMixa()
{
    void** x = (void**)MemoryAllocator::kmalloc(5000*sizeof(void*));
    printBuddyInfo();
    for(int i = 0; i < 5000;i++)
    {
        x[i] = buddy_alloc(2);
        if(x[i] == nullptr)
        {
            KConsole::trapPrintStringInt("Bad allocation ", i);
            for(int j = 0;j < i;j++)
            {
                buddy_free(x[j], 2);
            }
            break;
        }
    }
    printBuddyInfo();
}

