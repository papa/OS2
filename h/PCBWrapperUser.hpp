//
// Created by os on 1/9/23.
//

#ifndef PROJECT_BASE_PCBWRAPPERUSER_H
#define PROJECT_BASE_PCBWRAPPERUSER_H

class PCBWrapperUser
{
    using Body = void (*)(void*);
public:
    static void wrapperUser(Body body, void* args);
    static void userMainWrapper(void* a);
};


#endif //PROJECT_BASE_PCBWRAPPERUSER_H
