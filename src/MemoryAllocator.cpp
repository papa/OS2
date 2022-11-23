//
// Created by os on 4/27/22.
//

#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/KConsole.hpp"

MemoryAllocator::BlockHeader* MemoryAllocator::headAllocated = 0;
MemoryAllocator::BlockHeader* MemoryAllocator::headFree = 0;
int MemoryAllocator::memoryInitiliaized = 0;

void *MemoryAllocator::mem_alloc(size_t size)
{
    return tryToAllocateFragment(size);
}

uint64 MemoryAllocator::mem_free(void * addr)
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    if(memoryInitiliaized == 1)
        return;
    memoryInitiliaized = 1;
    headAllocated = 0;
    headFree = (BlockHeader*)HEAP_START_ADDR;
    headFree->next = 0;
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
}

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    initMemory();
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    newAllocated->size = size;
    if(headAllocated == 0)
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
        allFrag->next = newAllocated;
    }
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    initMemory();
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    newAllocated->size = size;
    while(curr != 0)
    {
        if((void*)curr > addr)
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
        curr = curr->next;
    }

    if(prev == 0)
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
}

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    initMemory();
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    while(curr != 0)
    {
        if(curr->size >= size)
        {
            void* oldAddr = curr;
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
            if(newAddr <= HEAP_END_ADDR)
            {
                uint64 size2 = curr->size - size;

                if(size2 > sizeof(BlockHeader))
                {
                    BlockHeader *newFree = (BlockHeader *) newAddr;
                    newFree->next = curr->next;
                    newFree->size = size2 - sizeof(BlockHeader);
                    if (prev != 0)
                        prev->next = newFree;
                    else
                        headFree = newFree;
                }
                else
                {
                    size+=size2;
                    if(prev != 0)
                        prev->next = curr->next;
                    else
                        headFree = curr->next;
                }
            }
            else
            {
                if(prev != 0)
                    prev->next = 0;
                else
                    headFree = 0;
            }
            insertAllFragment(oldAddr, size, nxtAllFrag);
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
        curr = curr->next;
    }

    return (void*)retval;
}

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    initMemory();
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    newSegment->next = 0;
    while(curr != 0)
    {
        if((void*)curr > addr)
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
        curr = curr->next;
    }

    if(prev == 0)
        headFree = newSegment;
    else
        prev->next = newSegment;

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    initMemory();
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    while(curr != 0)
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
        {
            if(prev != 0)
                prev->next = curr->next;
            else
                headAllocated = curr->next;

            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
        curr = curr->next;
    }

    if(curr != 0)
        return 0;
    else
        return 1;
}

void MemoryAllocator::memAllocHandler()
{
    size_t size;
    __asm__ volatile("mv %0, a1" : "=r"(size));
    size*=MEM_BLOCK_SIZE;
    void* allocatedAddr = kmalloc(size);
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    Riscv::w_a0_sscratch();
}

void MemoryAllocator::memFreeHandler()
{
    uint64 addr = 0;
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    uint64 retval = kfree((void*)addr);
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    return MemoryAllocator::mem_alloc(size);
}

uint64 MemoryAllocator::kfree(void* p)
{
    return MemoryAllocator::mem_free(p);
}