#include "../../h/slabAllocator.hpp"
#include "../../h/buddyAllocator.hpp"
#include "../../h/KConsole.hpp"

//TODO
//check values of the constants
#define SLAB_ALLOCATED_LOOKUP 512
#define CACHE_NAME_SIZE 64
#define CACHE_BUFFER_SMALL 5
#define CACHE_BUFFER_BIG 17
#define CACHE_BUFFER_SIZE CACHE_BUFFER_BIG - CACHE_BUFFER_SMALL + 1
#define CACHE_OF_CACHES_SLAB_SIZE 2
#define NO_ERROR 0
#define EXPAND_ERROR 0b1
#define DESTROY_ERROR 0b10
#define FREE_ERROR 0b100
#define MAX_NUM_OF_OBJS SLAB_ALLOCATED_LOOKUP*8

typedef struct slab_s
{
    slab_s* prev;
    slab_s* next;
    kmem_cache_t* owner;
    size_t numOfObjects;
    size_t numOfAllocatedObjects;
    void* startAddr;
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
    int errors;
}kmem_cache_t;

typedef struct slab_allocator_s
{
    kmem_cache_t* cachesBuffers[CACHE_BUFFER_SIZE];
    kmem_cache_t cacheOfCaches;
}slab_allocator_t;

//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;
static kmem_cache_t* cacheOfSlabs = nullptr;
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

int destroy_slab_list(slab_t** slab)
{
    if(*slab == nullptr) return 0;
    size_t sz = (*slab)->owner->slab_size;
    int totalBlocks = 0;
    while(*slab != nullptr)
    {
        slab_t* nextSlab = (*slab)->next;
        buddy_free(*slab, sz);
        *slab = nextSlab;
        totalBlocks+=sz;
    }
    return totalBlocks;
}

void init_cache(kmem_cache_t* cachep, const char* cache_name, size_t slab_size, size_t obj_size, void (*ctor)(void*),void (*dtor)(void*))
{
    strcpy(cache_name, cachep->cacheName);
    cachep->slab_size = slab_size;
    cachep->obj_size = obj_size;
    cachep->ctor = ctor;
    cachep->dtor = dtor;

    cachep->slabs_empty = cachep->slabs_partial = cachep->slabs_full = nullptr;
    cachep->errors = NO_ERROR;
}

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);

    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
        slabAllocatorLocal->cachesBuffers[i] = nullptr;

    init_cache(&slabAllocatorLocal->cacheOfCaches, "Cache of caches", CACHE_OF_CACHES_SLAB_SIZE, sizeof(kmem_cache_t), nullptr,nullptr);

    return slabAllocatorLocal;
}

bool checkSetIndex(slab_t* slab, int index)
{
    return (uint8)slab->allocated[index / 8] & (1 << (index%8));
}

void setAllocatedIndex(slab_t* slab, int index)
{
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
}

void* allocateObject(slab_t* slab)
{
    if(slab == nullptr)
        return nullptr;
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    {
        if(!checkSetIndex(slab, i))
        {
            addr = (void*)((size_t)slab->startAddr + i*slab->owner->obj_size);
            index = i;
            break;
        }
    }
    if(addr == nullptr)
        return nullptr;

    setAllocatedIndex(slab, index);
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
    if(slab == nullptr)
        return;
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
    slab_t* newSlab = (slab_t*)buddy_alloc(cachep->slab_size);
    if(newSlab == nullptr)
        return;
    newSlab->next = cachep->slabs_empty;
    if(cachep->slabs_empty != nullptr)
        cachep->slabs_empty->prev = newSlab;
    cachep->slabs_empty = newSlab;
    newSlab->prev = nullptr;

    newSlab->numOfAllocatedObjects = 0;
    newSlab->owner = cachep;
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    newSlab->startAddr = (void*)((size_t)newSlab + sizeof(slab_t));
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
        newSlab->allocated[i] = 0;

    if(cachep->ctor != nullptr)
    {
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
            cachep->ctor((void*)((size_t)newSlab->startAddr + i*newSlab->owner->obj_size));
    }
}

size_t getOptimalSlabSize(size_t obj_size)
{
    size_t bestSize = BLOCK_SIZE;
    while(bestSize < obj_size + sizeof(slab_t))
        bestSize<<=1;
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    size_t oldSize = bestSize;

    static size_t lowerConst = 1;
    static size_t highConst = 4;
    for(size_t i = lowerConst;i<=highConst;i++)
    {
        size_t newSize = oldSize << i;
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
        size_t numOfObjs = (newSize - sizeof(slab_t)) / obj_size;
        if(newWaste < optimalWaste && numOfObjs <= MAX_NUM_OF_OBJS)
        {
            optimalWaste = newWaste;
            bestSize = newSize;
        }
    }
    /*for(size_t i = lowerConst;i<=highConst;i++)
    {
        size_t newSize = oldSize + i*BLOCK_SIZE;
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
        size_t numOfObjs = (newSize - sizeof(slab_t)) / obj_size;
        if(newWaste < optimalWaste && numOfObjs <= MAX_NUM_OF_OBJS)
        {
            optimalWaste = newWaste;
            bestSize = newSize;
        }
    }*/

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
        size_t endAddr = (size_t)slab->startAddr + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp >= (size_t)slab->startAddr && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    }

    slab = cachep->slabs_partial;
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab->startAddr + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp >= (size_t)slab->startAddr && (size_t)objp < endAddr)
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
    KConsole::trapPrintStringInt("Slab start addr ", (size_t)slab->startAddr, 16);
    /*for(size_t i = 0;i < (slab->numOfObjects + 7) / 8;i++)
    {
        KConsole::trapPrintInt(i);
        KConsole::trapPrintString(" : ");
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
        KConsole::trapPrintString("\n");
    }*/
}

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
        return;
    int indexOfObject = ((size_t)objp - (size_t)slab->startAddr) / slab->owner->obj_size;
    if((size_t)objp != (size_t)slab->startAddr + indexOfObject*slab->owner->obj_size) //address not allocated, random address
        return;

    if(!checkSetIndex(slab, indexOfObject))
        return;

    kmem_cache_t* cachep = slab->owner;
    if(cachep->dtor != nullptr)
        cachep->dtor((void*)objp);
    if(cachep->ctor != nullptr)
        cachep->ctor((void*)objp);

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
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
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
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    printBuddyInfo();
}

void shrink_caches_on_slab(slab_t* slab)
{
    for(size_t i = 0; i < slab->numOfObjects;i++)
    {
        if(checkSetIndex(slab, i))
        {
            void* addr = (void*)((size_t)slab->startAddr + i*slab->owner->obj_size);
            kmem_cache_shrink((kmem_cache_t*)addr);
        }
    }
}

void shrink_all_caches()
{
    kmem_cache_t* cacheOfCaches = &slabAllocator->cacheOfCaches;

    slab_t* slab = cacheOfCaches->slabs_full;
    while(slab != nullptr)
    {
        shrink_caches_on_slab(slab);
        slab = slab->next;
    }

    slab = cacheOfCaches->slabs_partial;
    while(slab != nullptr)
    {
        shrink_caches_on_slab(slab);
        slab = slab->next;
    }

    kmem_cache_shrink(cacheOfCaches);
}

void* bigCacheKmalloc(kmem_cache_t* cachep)
{
    if(cachep == nullptr)
        return nullptr;

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
        slab_t* slab = (slab_t*)kmem_cache_alloc(cacheOfSlabs);
        if(slab == nullptr) // potencijalni EXPAND ERROR
            return nullptr;
        slab->owner = cachep;
        if(cachep->obj_size >= BLOCK_SIZE)
            slab->numOfObjects = (cachep->slab_size*BLOCK_SIZE) / cachep->obj_size;
        else
            slab->numOfObjects = BLOCK_SIZE / cachep->obj_size;
        slab->numOfAllocatedObjects = 0;
        for(size_t i = 0; i < (slab->numOfObjects + 7) / 8;i++)
            slab->allocated[i] = 0;
        void* addr = buddy_alloc(cachep->slab_size);
        if(addr == nullptr)
        {
            kmem_cache_free(cacheOfSlabs, slab);
            return nullptr;
        }
        slab->startAddr = addr;
        insertIntoSlabList(slab, &cachep->slabs_empty);
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

void big_kfree(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
        return;
    kmem_cache_t* cachep = slab->owner;
//    if(objp != slab->startAddr)
//        return;
    free_slab_object(slab, objp);
    slab_t* slabE = cachep->slabs_empty;
    while(slabE != nullptr)
    {
        slab_t* old = slabE;
        slabE = cachep->slabs_empty = slabE->next;
        buddy_free((void*)old->startAddr, cachep->slab_size);
        kmem_cache_free(cacheOfSlabs, old);
    }
//    buddy_free((void*)objp, cachep->obj_size / BLOCK_SIZE);
//    removeFullSlab(cachep, slab);
//    removePartialSlab(cachep, slab);
//    cachep->slabs_empty = nullptr;
//    kmem_cache_free(cacheOfSlabs, slab);
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    buddyAllocator* buddy = buddy_init(space, block_num);
    slabAllocator = slab_allocator_init(buddy);
    cacheOfSlabs = kmem_cache_create("Cache of slabs", sizeof(slab_t), nullptr,nullptr);
}

kmem_cache_t *kmem_cache_create(const char *name, size_t size,
                                void (*ctor)(void *),
                                void (*dtor)(void *))
{
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    if(newCache == nullptr)
        return nullptr;
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
        return nullptr;

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
        {
            cachep->errors|=EXPAND_ERROR;
            return nullptr;
        }
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

//TODO what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
        return;
    KConsole::trapPrintString("\n\n\n\n\n");
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

    KConsole::trapPrintString("\n\n\n\n\n");
}

void *kmalloc(size_t size)
{
    size_t level = getDeg2Ceil(size);
    if(level < CACHE_BUFFER_SMALL)
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
        return nullptr;
    size = (1 << level);
    size_t index = level - CACHE_BUFFER_SMALL;

    static size_t border = 12;
    if(level >= border)
    {
        if(slabAllocator->cachesBuffers[index] == nullptr)
        {
            slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
            if(slabAllocator->cachesBuffers[index] == nullptr)
                return nullptr;
            init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", 2*(size / BLOCK_SIZE), size, nullptr,nullptr);
        }

        return bigCacheKmalloc(slabAllocator->cachesBuffers[index]);
    }
    else
    {
        if(slabAllocator->cachesBuffers[index] == nullptr)
        {
            slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
            if(slabAllocator->cachesBuffers[index] == nullptr)
                return nullptr;
            init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", 1, size, nullptr,nullptr);
        }
        return bigCacheKmalloc(slabAllocator->cachesBuffers[index]);
    }
    return nullptr;
    //return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
}

void kfree(const void *objp)
{
    if(objp == nullptr)
        return;
    slab_t* slab = nullptr;
    //int index = -1;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
        if(slab != nullptr)
        {
            //index = i;
            break;
        }
    }
    /*static size_t border = 12;
    size_t level = index + CACHE_BUFFER_SMALL;
    if(slab != nullptr && level < border)
    {
        free_slab_object(slab, objp);
        destroy_slab_list(&(slab->owner->slabs_empty));
    }
    else if(slab != nullptr && level >= border)
    {
        big_kfree(slab, objp);
    }*/
    if(slab != nullptr)
    {
        big_kfree(slab, objp);
    }
}

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr) {
        cachep->errors |= DESTROY_ERROR;
        return;
    }
    destroy_slab_list(&cachep->slabs_empty);
    destroy_slab_list(&cachep->slabs_partial);
    destroy_slab_list(&cachep->slabs_full);
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
}

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
        return 0;
    int totalBlocks = destroy_slab_list(&cachep->slabs_empty);
    return totalBlocks;
}

int kmem_cache_error(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
        return 0;

    if(cachep->errors & EXPAND_ERROR)
        KConsole::trapPrintString("EXPAND ERROR\n");
    if(cachep->errors & DESTROY_ERROR)
        KConsole::trapPrintString("DESTROY ERROR");

    cachep->errors = NO_ERROR;

    return cachep->errors;
}
