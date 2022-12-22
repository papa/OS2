#include "../h/slabAllocator.hpp"
#include "../h/buddyAllocator.hpp"
#include "../h/KConsole.hpp"

#define SLAB_ALLOCATED_LOOKUP 32
#define CACHE_NAME_SIZE 512
#define CACHE_BUFFER_SMALL 5
#define CACHE_BUFFER_BIG 17
#define CACHE_BUFFER_SIZE CACHE_BUFFER_BIG - CACHE_BUFFER_SMALL + 1
#define CACHE_OF_CACHES_SLAB_SIZE 2

typedef struct slab_s
{
    slab_s* prev;
    slab_s* next;
    kmem_cache_t* owner;
    size_t numOfObjects;
    size_t numOfAllocatedObjects;
    void* startAddress;
    unsigned char allocated[SLAB_ALLOCATED_LOOKUP];
}slab_t;

typedef struct kmem_cache_s
{
    char cacheName[CACHE_NAME_SIZE];
    kmem_cache_s* next;
    kmem_cache_s* prev;
    slab_t* slabs_empty;
    slab_t* slabs_full;
    slab_t* slabs_partial;
    size_t slab_size;
    size_t obj_size;
    void (*ctor)(void*);
    void (*dtor)(void*);
}kmem_cache_t;

typedef struct slab_allocator_s
{
    buddyAllocator* buddy;
    kmem_cache_t* cacheList;
    kmem_cache_t* cachesBuffers[CACHE_BUFFER_SIZE];
    kmem_cache_t cacheOfCaches;
}slab_allocator_t;

//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    while(*src != '\0')
    {
        *dst = *src;
        src++;
    }
}

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);

    slabAllocatorLocal->buddy = buddy;
    slabAllocatorLocal->cacheList = nullptr;
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
        slabAllocatorLocal->cachesBuffers[i] = nullptr;

    //TODO
    //char* name = "Cache of caches";
    strcpy("Cache of caches", slabAllocatorLocal->cacheOfCaches.cacheName);
    slabAllocatorLocal->cacheOfCaches.next = nullptr;
    slabAllocatorLocal->cacheOfCaches.prev = nullptr;
    slabAllocatorLocal->cacheOfCaches.ctor = nullptr;
    slabAllocatorLocal->cacheOfCaches.dtor = nullptr;
    slabAllocatorLocal->cacheOfCaches.slabs_empty = nullptr;
    slabAllocatorLocal->cacheOfCaches.slabs_full = nullptr;
    slabAllocatorLocal->cacheOfCaches.slabs_partial = nullptr;
    slabAllocatorLocal->cacheOfCaches.slab_size = CACHE_OF_CACHES_SLAB_SIZE;
    slabAllocatorLocal->cacheOfCaches.obj_size = sizeof(kmem_cache_t);
    return slabAllocatorLocal;
}

void* allocateObject(slab_t* slab)
{
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    {
        size_t mask = 1 << (i%8);
        if((uint8)slab->allocated[i/8] & mask)
        {
            addr = (void*)((size_t)slab->startAddress + sizeof(slab_t)+ i*slab->owner->obj_size);
            index = i;
            break;
        }
    }
    if(addr == nullptr)
        return nullptr;

    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    slab->numOfAllocatedObjects++;

    return addr;
}
bool full(slab_t* slab)
{
    return slab->numOfAllocatedObjects == slab->numOfObjects;
}

bool empty(slab_t* slab)
{
    return slab->numOfAllocatedObjects == 0;
}

void putPartialToFull(kmem_cache_t* cachep)
{
    slab_t* slab = cachep->slabs_partial;
    cachep->slabs_partial = cachep->slabs_partial->next;
    if(cachep->slabs_partial!=nullptr)
        cachep->slabs_partial = nullptr;
    slab->next = cachep->slabs_full;
    if(cachep->slabs_full != nullptr)
        cachep->slabs_full->prev = slab;
    cachep->slabs_full = slab;
    slab->prev = nullptr;
}

void putEmptyToPartial(kmem_cache_t* cachep)
{
    slab_t* slab = cachep->slabs_empty;
    cachep->slabs_empty = cachep->slabs_empty->next;
    if(cachep->slabs_empty != nullptr)
        cachep->slabs_empty = nullptr;
    slab->next = cachep->slabs_partial;
    if(cachep->slabs_partial != nullptr)
        cachep->slabs_partial->prev = slab;
    cachep->slabs_partial = slab;
    slab->prev = nullptr;
}

void allocateSlab(kmem_cache_t* cachep)
{
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size*BLOCK_SIZE);
    newSlab->next = cachep->slabs_empty;
    if(cachep->slabs_empty != nullptr)
        cachep->slabs_empty->prev = newSlab;
    cachep->slabs_empty = newSlab;
    newSlab->prev = nullptr;
    newSlab->numOfAllocatedObjects = 0;
    newSlab->owner = cachep;
    newSlab->startAddress = (void*)newSlab;
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    for(size_t i = 0; i < newSlab->numOfObjects / 8;i++)
        newSlab->allocated[i] = 0;
}

size_t getOptimalSlabSize(size_t obj_size)
{
    size_t bestSize = BLOCK_SIZE;
    while(bestSize < obj_size + sizeof(slab_t))
        bestSize<<=1;
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;

    for(int i = 1;i<=4;i++) //change constants
    {
        size_t newSize = bestSize << i;
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
        if(newWaste < optimalWaste)
        {
            optimalWaste = newWaste;
            bestSize = newSize;
        }
    }

    return bestSize / BLOCK_SIZE;
}

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, void* objp)
{
    slab_t* slab = cachep->slabs_full;
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    }

    slab = cachep->slabs_partial;
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    }

    return nullptr;
}

void resetAllocatedIndex(slab_t* slab, int index)
{
    //TODO test it
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
}

void removeFullSlab(kmem_cache_t * cachep, slab_t* slab)
{
    if(slab->prev)
    {
        slab->prev->next = slab->next;
        slab->next->prev = slab->prev;
    }
    else
    {
        slab->next->prev = nullptr;
        cachep->slabs_full = slab->next;
    }
    slab->next = cachep->slabs_partial;
    slab->prev = nullptr;
    if(cachep->slabs_partial)
        cachep->slabs_partial->prev = slab;
    cachep->slabs_partial = slab;
}

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    if(slab->prev)
    {
        slab->prev->next = slab->next;
        slab->next->prev = slab->prev;
    }
    else
    {
        slab->next->prev = nullptr;
        cachep->slabs_partial = slab->next;
    }
    slab->next = cachep->slabs_empty;
    slab->prev = nullptr;
    if(cachep->slabs_empty)
        cachep->slabs_empty->prev = slab;
    cachep->slabs_empty = slab;
}

void printSlabInfo(slab_t* slab)
{
    KConsole::trapPrintString("Slab address ");
    KConsole::trapPrintInt((size_t)slab);KConsole::trapPrintString("\n");
    KConsole::trapPrintString("Number of allocated objects ");
    KConsole::trapPrintInt(slab->numOfAllocatedObjects);KConsole::trapPrintString("\n");
    KConsole::trapPrintString("Number of objects ");
    KConsole::trapPrintInt(slab->numOfObjects);KConsole::trapPrintString("\n");
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    buddyAllocator* buddy = buddy_init(space, block_num);
    slabAllocator = slab_allocator_init(buddy);
}

kmem_cache_t *kmem_cache_create(const char *name, size_t size,
                                void (*ctor)(void *),
                                void (*dtor)(void *))
{
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    newCache->slabs_empty = nullptr;
    newCache->slabs_partial = nullptr;
    newCache->slabs_full = nullptr;
    newCache->next = newCache->prev = nullptr;
    newCache->dtor = dtor;
    newCache->ctor = ctor;
    strcpy(name, newCache->cacheName);
    newCache->obj_size = size;
    newCache->slab_size = getOptimalSlabSize(size);
    return nullptr;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    if(cachep->slabs_partial != nullptr)
    {
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
        if(!empty(cachep->slabs_empty))
            putEmptyToPartial(cachep);
        return allocatedAddr;
    }
    else
    {
        allocateSlab(cachep);
        if(cachep->slabs_empty == nullptr)
            return nullptr;
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
        if(!empty(cachep->slabs_empty))
            putEmptyToPartial(cachep);
        return allocatedAddr;
    }
    return nullptr;
}

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    slab_t* slab = findSlab(cachep, objp);
    if(slab == nullptr) return;

    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
        return;

    resetAllocatedIndex(slab, indexOfObject);
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
        removeFullSlab(cachep, slab);
    else if(slab->numOfAllocatedObjects == 1)
        removePartialSlab(cachep, slab);
    slab->numOfAllocatedObjects--;
}

//TODO
//what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    KConsole::trapPrintString("Kmem Cache Info-------------------\n");
    KConsole::trapPrintString("Cache Name ");
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    KConsole::trapPrintString("Cache slab size in blocks ");
    KConsole::trapPrintInt(cachep->slab_size); KConsole::trapPrintString("\n");
    KConsole::trapPrintString("Cache obj size in bytes ");
    KConsole::trapPrintInt(cachep->obj_size); KConsole::trapPrintString("\n");
    KConsole::trapPrintString("Slabs info----\n");

    KConsole::trapPrintString("Full slabs\n");
    slab_t* slab = cachep->slabs_full;
    while(slab != nullptr)
    {
        printSlabInfo(slab);
        slab = slab->next;
    }

    KConsole::trapPrintString("Partial slabs\n");
    slab = cachep->slabs_partial;
    while(slab != nullptr)
    {
        printSlabInfo(slab);
        slab = slab->next;
    }

    KConsole::trapPrintString("Empty slabs\n");
    slab = cachep->slabs_empty;
    while(slab != nullptr)
    {
        printSlabInfo(slab);
        slab = slab->next;
    }
}
