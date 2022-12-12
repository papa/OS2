//
// Created by os on 12/12/22.
//

#ifndef PROJECT_BASE_BUDDYALLOCATOR_H
#define PROJECT_BASE_BUDDYALLOCATOR_H

#include "../lib/hw.h"

#define MAX_LEVEL 32
#define BLOCK_SIZE_POWER_2 12
#define BLOCK_SIZE 4096
typedef char block[4096];

typedef struct buddyLevel
{
    uint64* first = nullptr;
    uint64* last = nullptr;
}buddyLevel;

typedef struct buddyAllocator
{
    size_t numOfBlocks;
    void* startAddr;
    size_t numOfFreeBlocks; // is it even important?
    size_t maxLevel;
    buddyLevel bucket[MAX_LEVEL];
}buddyAllocator;

buddyAllocator* buddy_init(void* addr, size_t numOfBlocks);
void* buddy_alloc(buddyAllocator* buddy, size_t numOfBlocks);
void buddy_free(buddyAllocator* buddy, void* addr, size_t numOfBlocks);
inline size_t getBlockAddr(size_t addr);
inline size_t getNextBlockAddr(size_t addr);
inline size_t getDeg2Floor(size_t num);
inline size_t getDeg2Ceil(size_t num);
void addBlocks(buddyAllocator* buddy, void* addr, size_t numOfBlocks);
size_t getBuddyBlockAddr(void* addr, size_t level);
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level);
void split(buddyAllocator* buddy, void* addr, size_t finalLevel, size_t currLevel, bool splitMore);

#endif //PROJECT_BASE_BUDDYALLOCATOR_H
