#include "../h/slabAllocator.hpp"
#include "../h/buddyAllocator.hpp"
#include "../h/KConsole.hpp"

//TODO
//check values of the constants
#define SLAB_ALLOCATED_LOOKUP 32
#define CACHE_NAME_SIZE 64
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
    unsigned char allocated[SLAB_ALLOCATED_LOOKUP];
}slab_t;

typedef struct kmem_cache_s
{
    char cacheName[CACHE_NAME_SIZE];
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
        src++; dst++;
    }
    *dst = *src;
}

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);

    slabAllocatorLocal->buddy = buddy;
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
        slabAllocatorLocal->cachesBuffers[i] = nullptr;

    strcpy("Cache of caches", slabAllocatorLocal->cacheOfCaches.cacheName);
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
        if(!((uint8)slab->allocated[i/8] & mask))
        {
            addr = (void*)((size_t)slab + sizeof(slab_t)+ i*slab->owner->obj_size);
            index = i;
            break;
        }
    }
    if(addr == nullptr)
        return nullptr;

    //KConsole::trapPrintStringInt("Allocated index ",index);

    //TODO
    //implement functions to set bit and check it
    slab->allocated[index/8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
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

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    slab->prev = nullptr;
    slab->next = *slab_head;
    if(*slab_head != nullptr)
        (*slab_head)->prev = slab;
    *slab_head = slab;
}

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    if(slab->prev == nullptr) //same as slab == *slab_head
    {
        if(slab->next) slab->next->prev = nullptr;
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
        if(slab->next) slab->next->prev = slab->prev;
        slab->next = slab->prev = nullptr;
    }
}

void putPartialToFull(kmem_cache_t* cachep)
{
    slab_t* slab = cachep->slabs_partial;
    removeFromSlabList(slab, &cachep->slabs_partial);
    insertIntoSlabList(slab, &cachep->slabs_full);
}

void putEmptyToPartial(kmem_cache_t* cachep)
{
    slab_t* slab = cachep->slabs_empty;
    removeFromSlabList(slab, &cachep->slabs_empty);
    insertIntoSlabList(slab, &cachep->slabs_partial);
}

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    removeFromSlabList(slab, &cachep->slabs_full);
    insertIntoSlabList(slab, &cachep->slabs_partial);
}

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    removeFromSlabList(slab, &cachep->slabs_partial);
    insertIntoSlabList(slab, &cachep->slabs_empty);
}

void allocateSlab(kmem_cache_t* cachep)
{
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size);
    newSlab->next = cachep->slabs_empty;
    if(cachep->slabs_empty != nullptr)
        cachep->slabs_empty->prev = newSlab;
    cachep->slabs_empty = newSlab;
    newSlab->prev = nullptr;
    newSlab->numOfAllocatedObjects = 0;
    newSlab->owner = cachep;
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
        newSlab->allocated[i] = 0;
}

size_t getOptimalSlabSize(size_t obj_size)
{
    size_t bestSize = BLOCK_SIZE;
    while(bestSize < obj_size + sizeof(slab_t))
        bestSize<<=1;
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;

    for(int i = 1;i<=4;i++) //TODO change constants
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
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    if(cachep == nullptr || objp == nullptr)
        return nullptr;
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
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
}

void printSlabInfo(slab_t* slab)
{
    KConsole::trapPrintString("One slab info---------\n");
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    for(size_t i = 0;i < (slab->numOfObjects + 7) / 8;i++)
    {
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
        KConsole::trapPrintString("\n");
    }
}

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
        return;
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
        return;

    //TODO
    //test if the index was even marked as taken
    resetAllocatedIndex(slab, indexOfObject);
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    {
        removeFullSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
        if(empty(slab))
            removePartialSlab(slab->owner, slab);
    }
    else if(slab->numOfAllocatedObjects == 1)
    {
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
}

void printSlabAllocatorInfo()
{
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    KConsole::trapPrintStringInt("Slab allocator buddy address ", (size_t)slabAllocator->buddy,16);
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    KConsole::trapPrintString("Cache of caches info\n");
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    KConsole::trapPrintString("Caches for buffers\n");
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    {
        if(slabAllocator->cachesBuffers[i] != nullptr)
        {
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
        }
    }
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    buddyAllocator* buddy = buddy_init(space, block_num);
    slabAllocator = slab_allocator_init(buddy);
    //printSlabAllocatorInfo();
}

//TODO
//protect everything from nullptrs
kmem_cache_t *kmem_cache_create(const char *name, size_t size,
                                void (*ctor)(void *),
                                void (*dtor)(void *))
{
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    newCache->slabs_empty = nullptr;
    newCache->slabs_partial = nullptr;
    newCache->slabs_full = nullptr;
    newCache->dtor = dtor;
    newCache->ctor = ctor;
    strcpy(name, newCache->cacheName);
    newCache->obj_size = size;
    newCache->slab_size = getOptimalSlabSize(size);
    return newCache;
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
        {
            putEmptyToPartial(cachep);
            if(full(cachep->slabs_partial))
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    else
    {
        allocateSlab(cachep);
        if(cachep->slabs_empty == nullptr)
            return nullptr;
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
        if(!empty(cachep->slabs_empty))
        {
            putEmptyToPartial(cachep);
            if(full(cachep->slabs_partial))
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
        return;
    slab_t* slab = findSlab(cachep, objp);
    if(slab == nullptr) return;
    free_slab_object(slab, objp);
}

//TODO
//what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    KConsole::trapPrintString("Cache Name ");
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    
    KConsole::trapPrintString("Slabs info-------------------\n");

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

void *kmalloc(size_t size)
{
    size_t level = getDeg2Ceil(size);
    if(level < CACHE_BUFFER_SMALL)
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
        return nullptr;
    size_t index = level - CACHE_BUFFER_SMALL;
    if(slabAllocator->cachesBuffers[index] == nullptr)
    {
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
        slabAllocator->cachesBuffers[index]->slabs_empty = nullptr;
        slabAllocator->cachesBuffers[index]->slabs_partial = nullptr;
        slabAllocator->cachesBuffers[index]->slabs_full = nullptr;
        slabAllocator->cachesBuffers[index]->dtor = nullptr;
        slabAllocator->cachesBuffers[index]->ctor = nullptr;
        strcpy("Cache for small buffers", slabAllocator->cachesBuffers[index]->cacheName);
        slabAllocator->cachesBuffers[index]->obj_size = size;
        slabAllocator->cachesBuffers[index]->slab_size = getOptimalSlabSize(size);
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
}

void kfree(const void *objp)
{
    if(objp == nullptr)
        return;
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
        if(slab != nullptr) break;
    }
    if(slab != nullptr)
    {
        free_slab_object(slab, objp);
    }
}

int destroy_slab_list(slab_t* slab)
{
    if(slab == nullptr) return 0;
    size_t sz = slab->owner->slab_size;
    int totalBlocks = 0;
    while(slab != nullptr)
    {
        slab_t* nextSlab = slab->next;
        buddy_free(slabAllocator->buddy, slab, sz);
        slab = nextSlab;
        totalBlocks+=sz;
    }
    return totalBlocks;
}

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    destroy_slab_list(cachep->slabs_empty);
    destroy_slab_list(cachep->slabs_partial);
    destroy_slab_list(cachep->slabs_full);
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
}

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
        return 0;
    int totalBlocks = destroy_slab_list(cachep->slabs_empty);
    cachep->slabs_empty = nullptr;
    return totalBlocks;
}