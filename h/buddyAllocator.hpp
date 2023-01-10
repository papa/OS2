//
// Created by os on 12/12/22.
//

#ifndef PROJECT_BASE_BUDDYALLOCATOR_H
#define PROJECT_BASE_BUDDYALLOCATOR_H

#include "../lib/hw.h"

#define MAX_LEVEL 16
#define BLOCK_SIZE_POWER_2 12
typedef char block[4096];

typedef struct buddyBlock
{
    buddyBlock* next;
}buddyBlock;

typedef struct buddyLevel
{
    buddyBlock* first = nullptr;
    buddyBlock* last = nullptr;
}buddyLevel;

typedef struct buddyAllocator
{
    size_t numOfBlocks; //number of blocks
    void* startAddr; //star addr of buddy
    size_t numOfFreeBlocks; // is it even important?
    size_t maxLevel; //mav level to divide
    buddyLevel bucket[MAX_LEVEL];
}buddyAllocator;

buddyAllocator* buddy_init(void* addr, size_t numOfBlocks);
void* buddy_alloc(size_t numOfBlocks);
void buddy_free(void* addr, size_t numOfBlocks);
size_t getBlockAddr(size_t addr);
size_t getNextBlockAddr(size_t addr);
size_t getDeg2Floor(size_t num);
size_t getDeg2Ceil(size_t num);
void addBlocks(void* addr, size_t numOfBlocks);
size_t getBuddyBlockAddr(void* addr, size_t level);
void addBlockToLevel(void* addr, size_t level);
void split(void* addr, size_t finalLevel, size_t currLevel, bool splitMore);
void printBuddyInfo();
void* getBuddy();
#endif //PROJECT_BASE_BUDDYALLOCATOR_H
