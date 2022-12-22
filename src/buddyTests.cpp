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
    buddy_alloc(buddy,3);
    printBuddyInfo(buddy);
    buddy_alloc(buddy,1);
    printBuddyInfo(buddy);
    buddy_alloc(buddy,1);
    printBuddyInfo(buddy);
    buddy_alloc(buddy,1);
    printBuddyInfo(buddy);
}