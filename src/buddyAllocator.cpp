#include "../h/buddyAllocator.hpp"
#include "../h/KConsole.hpp"

#define BLOCK_SIZE 4096

buddyAllocator* buddy_init(void* addr, size_t numOfBlocks)
{
    //KConsole::trapPrintString("Buddy initialization\n");
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    size_t buddyAddr = (size_t)addr;
    //KConsole::trapPrintInt(blockAddr,16); KConsole::trapPrintString("\n");
    //KConsole::trapPrintInt(buddyAddr,16); KConsole::trapPrintString("\n");
    if((size_t)addr != blockAddr) // if start address not aligned
    {
        buddyAddr = getNextBlockAddr(blockAddr);
        numOfBlocks--; //have to discard one block
    }
    //KConsole::trapPrintStringInt("Buddy metadata address: ", buddyAddr,16);
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
        addBlocks(buddy, (block*)buddy->startAddr + i, 0);

    return buddy;
}

void* buddy_alloc(buddyAllocator* buddy, size_t numOfBlocks)
{
    //KConsole::trapPrintStringInt("Buddy allocation: ", numOfBlocks);
    size_t level = getDeg2Ceil(numOfBlocks);
    //KConsole::trapPrintStringInt("Level: ", level);
    for(size_t i = level; i <= buddy->maxLevel;i++)
    {
        if(buddy->bucket[i].first != nullptr)
        {
            buddyBlock* ret = buddy->bucket[i].first;
            //KConsole::trapPrintStringInt("Found the block:", (size_t)ret,16);
            buddy->bucket[i].first = ret->next;
            if(buddy->bucket[i].first == nullptr)
                buddy->bucket[i].last = nullptr;
            split(buddy, (void*)ret, level, i, true);
            return ret;
        }
    }

    return nullptr;
}

//split chunks into smaller chunks, until it is necessary
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
        size_t buddyBlock = getBuddyBlockAddr(buddy, addr, currLevel - 1); // currLevel - 1 for next step
        split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
        split(buddy, addr, finalLevel, currLevel - 1, true); // continue splitting
    }
}

//TODO
//maybe check if address is aligned to start of block
void buddy_free(buddyAllocator* buddy, void* addr, size_t numOfBlocks)
{
    //KConsole::trapPrintStringInt("Buddy free: ", (size_t)addr,16);
    //KConsole::trapPrintStringInt("Num of blocks: ", numOfBlocks);
    size_t level = getDeg2Ceil(numOfBlocks);
    addBlocks(buddy, addr, level); //adds free blocks
}

size_t getBlockAddr(size_t addr)
{
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
size_t getNextBlockAddr(size_t addr)
{
    size_t currBlock = getBlockAddr(addr);
    return currBlock + BLOCK_SIZE;
}

size_t getDeg2Floor(size_t num)
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

size_t getDeg2Ceil(size_t num)
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
//function to add free blocks to the buddy
void addBlocks(buddyAllocator* buddy, void* addr, size_t level)
{
    if(level == buddy->maxLevel)
    {
        addBlockToLevel(buddy, addr, level);
        return;
    }
    size_t buddyBlockAddr = getBuddyBlockAddr(buddy,addr,level);
    //KConsole::trapPrintString("Buddy block addr ");
    //KConsole::trapPrintInt(buddyBlockAddr, 16); KConsole::trapPrintString("\n");
    buddyBlock* curr = buddy->bucket[level].first;
    buddyBlock* prev = nullptr;
    while(curr != nullptr)
    {
        if((size_t)curr == buddyBlockAddr)
        {
            if(prev != nullptr)
            {
                prev->next = curr->next;
                if(curr == buddy->bucket[level].last)
                    buddy->bucket[level].last = prev;
            }
            else
            {
                if(curr->next == nullptr)
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
                else
                    buddy->bucket[level].first = curr->next;
            }
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, level + 1); //merge two chunks
            else addBlocks(buddy, (void*)buddyBlockAddr, level + 1); //merge two chunks
            return;
        }

        prev = curr;
        curr = curr->next;
    }

    addBlockToLevel(buddy, addr, level);
}

//adds free block to level
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    if(buddy->bucket[level].first == nullptr)
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
        buddy->bucket[level].last = newBlock;
    }
}

size_t getBuddyBlockAddr(buddyAllocator* buddy, void* addr, size_t level)
{
    size_t diff = BLOCK_SIZE << level;
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    if(diff & off)
        return (size_t)addr - diff;
    else
        return (size_t)addr + diff;
}

void printBuddyInfo(buddyAllocator* buddy)
{
    //KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    //KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    //KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    //TODO take care of numOfFreeBlocks
    //KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    for(int i = buddy->maxLevel;i>=0;i--)
    {
        //KConsole::trapPrintStringInt("Level ",i);
        //KConsole::trapPrintString("Free blocks on this level\n");
        buddyBlock* curr = buddy->bucket[i].first;
        while(curr != 0)
        {
            //KConsole::trapPrintInt((size_t)curr, 16);
            //KConsole::trapPrintString("\n");
            curr = curr->next;
        }
    }
    //KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
}