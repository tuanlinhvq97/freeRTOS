#include "ring_buffer.h"
#include "task.h"

ringBuffer rBuffer;
uint32_t dataRingBuff;
void buff;

void pushTask(void* param)
{
    while(1)
    {
        dataRingBuff = rBuffer.head;
        rBuffPush(&dataRingBuff, &rBuffer, 1000);
    }
}

void popTask(void* param)
{
    while(1)
    {
        rBuffPop(&dataRingBuff, &rBuffer, 2000);
    }
}