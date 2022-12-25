#include "../h/buddyTests.hpp"

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