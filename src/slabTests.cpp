#include "../h/slabTests.hpp"

void slabInitTest()
{
    kmem_init((void*)HEAP_START_ADDR, 15);
}

void slabCacheCreateTest()
{
    kmem_init((void*)HEAP_START_ADDR, 15);
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    if(cache && cache2 && cache3)
        printSlabAllocatorInfo();
}

void slabCacheCreateTest2()
{
    kmem_init((void*)HEAP_START_ADDR, 15);
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=60;i++)
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    }
    printSlabAllocatorInfo();
    kmem_cache_destroy(cache);
}