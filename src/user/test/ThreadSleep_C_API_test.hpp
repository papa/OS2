//
// Created by os on 4/17/22.
//

#ifndef XV6_THREADSLEEP_C_API_TEST_HPP
#define XV6_THREADSLEEP_C_API_TEST_HPP

#include "../../../h/syscall_c.hpp"
#include "../../../h/syscall_c_kernel.hpp"
#include "printing.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    time_t sleep_time = *((time_t *) arg);
    int i = 6;
    while (--i > 0) {

        printString("Hello ");
        printInt(sleep_time);
        printString(" !\n");
        time_sleep(sleep_time);
//        if(i == 4 && sleep_time == 10)
//        {
//            thread_dispatch_kernel();
//            *((size_t*)HEAP_START_ADDR) = 4;
//        }
    }
    finished[sleep_time/10-1] = true;
}

void testSleeping() {
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    }

//    int count = 0;
    while (!(finished[0] && finished[1])) {
//        count++;
//        if(count == 2000*2000)
//            finished[0] = true;
//        else
//            thread_dispatch();
    }
}

#endif //XV6_THREADSLEEP_C_API_TEST_HPP
