#include "../h/slabAllocator.hpp"
#include "../h/buddyAllocator.hpp"

#define SLAB_ALLOCATED_LOOKUP 32
#define CACHE_NAME_SIZE 512
#define CACHE_BUFFER_SMALL 5
#define CACHE_BUFFER_BIG 17
#define CACHE_BUFFER_SIZE CACHE_BUFFER_BIG - CACHE_BUFFER_SMALL + 1

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
    kmem_cache_s* next;
    kmem_cache_s* prev;
    slab_t* slabs_empty;
    slab_t* slabs_full;
    slab_t* slabs_partial;
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
