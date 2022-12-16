#include "../h/slabAllocator.hpp"
#include "../h/buddyAllocator.hpp"

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
    for(int i = 0; i < CACHE_BUFFER_SIZE;i++)
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

//slab allocator public interface
void kmem_init(void *space, int block_num)
{
    buddyAllocator* buddy = buddy_init(space, block_num);
    slabAllocator = slab_allocator_init(buddy);
}

kmem_cache_t *kmem_cache_create(const char *name, size_t size,
                                void (*ctor)(void *),
                                void (*dtor)(void *))
{

    return nullptr;
}

void* allocateObject(slab_t* slab)
{
    int index = -1;
    void* addr = nullptr;
    for(int i = 0;i < slab->numOfObjects;i++)
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

void putPartialToFull(kmem_cache_t* cachep)
{
    slab_t* slab = cachep->slabs_partial;
    cachep->slabs_partial = cachep->slabs_partial->next;
    slab->next = cachep->slabs_full;
    cachep->slabs_full = slab;
}

void putEmptyToPartial(kmem_cache_t* cachep)
{
    slab_t* slab = cachep->slabs_empty;
    cachep->slabs_empty = cachep->slabs_empty->next;
    slab->next = cachep->slabs_partial;
    cachep->slabs_partial = slab;
}

void allocateSlab(kmem_cache_t* cachep)
{
    
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    slab_t *slabAlloc = nullptr;
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
        if(full(cachep->slabs_empty))
            putEmptyToPartial(cachep);
        return allocatedAddr;
    }
    else
    {
        allocateSlab(cachep);
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
        if(full(cachep->slabs_empty))
            putEmptyToPartial(cachep);
        return allocatedAddr;
    }

}

