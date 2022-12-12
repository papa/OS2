#include "../h/buddyAllocator.hpp"

buddyAllocator* buddy_init(void* addr, size_t numOfBlocks)
{
    size_t blockAddr = getBlockAddr((size_t)addr);
    size_t buddyAddr = (size_t)addr;
    if((size_t)addr != blockAddr) // if start address not aligned
    {
        buddyAddr = getNextBlockAddr(blockAddr);
        numOfBlocks--;
    }

    numOfBlocks--; // take one block for buddy metadata
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    buddy->numOfBlocks = numOfBlocks;
    buddy->numOfFreeBlocks = numOfBlocks;
    buddy->maxLevel = getDeg2Floor(numOfBlocks);

    for(size_t i = 0; i <= buddy->maxLevel;i++)
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;

    //TODO
    //maybe do it differently, like putting in chunks of power of 2
    for(size_t i = 0;i < numOfBlocks;i++)
        addBlocks(buddy, (block*)buddy->startAddr + i, 1);

    return buddy;
}

void* buddy_alloc(buddyAllocator* buddy, size_t numOfBlocks)
{
    size_t level = getDeg2Ceil(numOfBlocks);
    for(size_t i = level; i <= buddy->maxLevel;i++)
    {
        if(buddy->bucket[i].first != nullptr)
        {
            uint64* ret = buddy->bucket[i].first;
            buddy->bucket[i].first = (uint64*)*ret;
            if(buddy->bucket[i].first == nullptr)
                buddy->bucket[i].last = nullptr;
            split(buddy, (void*)ret, level, i, true);
            return ret;
        }
    }

    return nullptr;
}

void split(buddyAllocator* buddy, void* addr, size_t finalLevel, size_t currLevel, bool splitMore)
{
    if(!splitMore)
    {
        addBlockToLevel(buddy, addr, currLevel);
    }
    else
    {
        if(currLevel == finalLevel)
            return;
        if(currLevel > finalLevel) // condition not necessary, just for protection
        {
            size_t buddyBlock = getBuddyBlockAddr(addr, currLevel - 1); // currLevel - 1 for next step
            split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false);
            split(buddy, addr, finalLevel, currLevel - 1, true);
        }
    }
}

void buddy_free(buddyAllocator* buddy, void* addr, size_t numOfBlocks)
{
    addBlocks(buddy, addr, numOfBlocks);
}

inline size_t getBlockAddr(size_t addr)
{
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
inline size_t getNextBlockAddr(size_t addr)
{
    size_t currBlock = getBlockAddr(addr);
    return currBlock + BLOCK_SIZE;
}

inline size_t getDeg2Floor(size_t num)
{
    size_t x = 1;
    size_t deg = 0;
    while(x <= num)
    {
        deg++;
        x<<=1;
    }
    return deg - 1;
}

inline size_t getDeg2Ceil(size_t num)
{
    size_t x = 1;
    size_t deg = 0;
    while(x < num)
    {
        deg++;
        x<<=1;
    }
    return deg;
}

//TODO
//maybe change it to work with levels instead of numOfBlocks
void addBlocks(buddyAllocator* buddy, void* addr, size_t numOfBlocks)
{
    size_t level = getDeg2Ceil(numOfBlocks);
    if(level == buddy->maxLevel)
    {
        addBlockToLevel(buddy, addr, level);
        return;
    }
    size_t buddyBlock = getBuddyBlockAddr(addr, level);
    uint64* curr = buddy->bucket[level].first;
    uint64* prev = nullptr;
    while(curr != nullptr)
    {
        if((size_t)curr == buddyBlock)
        {
            if(prev != nullptr)
            {
                *prev = *curr;
                if(curr == buddy->bucket[level].last)
                    buddy->bucket[level].last = prev;
            }
            else
            {
                if(*curr == 0)
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
                else
                    buddy->bucket[level].first = (uint64*)*curr;
            }
            if((size_t)addr < buddyBlock) addBlocks(buddy, addr, 1 << (level + 1));
            else addBlocks(buddy, (void*)buddyBlock, 1 << (level + 1));
            return;
        }

        prev = curr;
        curr = (uint64*)*curr;
    }

    addBlockToLevel(buddy, addr, level);
}

void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    if(buddy->bucket[level].first == nullptr)
    {
        buddy->bucket[level].first = buddy->bucket[level].last = (uint64*)addr;
        *(buddy->bucket[level].last) = 0;
    }
    else
    {
        *(buddy->bucket[level].last) = (uint64)addr;
        buddy->bucket[level].last = (uint64*)addr;
        *(buddy->bucket[level].last) = 0;
    }
}

size_t getBuddyBlockAddr(void* addr, size_t level)
{
    return (size_t)addr ^ (1 << level);
}
