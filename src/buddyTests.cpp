#include "../h/buddyTests.hpp"
#include "../h/KConsole.hpp"
#include "../h/MemoryAllocator.hpp"

void buddyInitTest1()
{
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 18);
    printBuddyInfo(buddy);
}

void buddyOnlyAllocsTest1()
{
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    printBuddyInfo(buddy);
    buddy_alloc(buddy,1);
    printBuddyInfo(buddy);
    buddy_alloc(buddy,1);
    printBuddyInfo(buddy);
    buddy_alloc(buddy,1);
    printBuddyInfo(buddy);
    buddy_alloc(buddy,3);
    printBuddyInfo(buddy);
}

void buddyOnlyAllocsTest2()
{
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    void* adr = buddy_alloc(buddy, 100);
    if(adr == nullptr)
    {
        printBuddyInfo(buddy);
    }
}

void buddyAllocFreeTest1()
{
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    printBuddyInfo(buddy);
    void* adr = buddy_alloc(buddy,1);
    printBuddyInfo(buddy);
    buddy_free(buddy, adr, 1);
    printBuddyInfo(buddy);

    adr = buddy_alloc(buddy, 2);
    void* adr2 = buddy_alloc(buddy, 3);
    printBuddyInfo(buddy);

    buddy_free(buddy, adr, 2);
    printBuddyInfo(buddy);
    adr = buddy_alloc(buddy, 1);
    printBuddyInfo(buddy);

    buddy_free(buddy, adr2, 3);
    printBuddyInfo(buddy);
    buddy_free(buddy, adr, 1);
    printBuddyInfo(buddy);
}

void buddyTestMixa()
{
    size_t mask = ((size_t)-1) << 12;
    buddyAllocator* buddy = (buddyAllocator*)(((size_t)HEAP_START_ADDR & mask) + (1 << 12));
    void** x = (void**)MemoryAllocator::kmalloc(5000*sizeof(void*));
    printBuddyInfo(buddy);
    for(int i = 0; i < 5000;i++)
    {
        x[i] = buddy_alloc(buddy, 2);
        if(x[i] == nullptr)
        {
            KConsole::trapPrintStringInt("Bad allocation ", i);
            for(int j = 0;j < i;j++)
            {
                buddy_free(buddy, x[j], 2);
            }
            break;
        }
    }
    printBuddyInfo(buddy);
}

