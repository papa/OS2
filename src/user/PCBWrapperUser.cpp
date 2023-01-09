//
// Created by os on 1/9/23.
//
#include "../../h/PCBWrapperUser.hpp"
#include "../../h/syscall_c.hpp"
#include "test/userMain.hpp"

void PCBWrapperUser::userMainWrapper(void* a)
{
    userMain();
}

void PCBWrapperUser::wrapperUser(Body body, void* args)
{
    body(args);
    thread_exit();
}