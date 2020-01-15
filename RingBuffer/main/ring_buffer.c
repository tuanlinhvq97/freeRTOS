#include "ring_buffer.h"


void rBuffCreate(ringBuffer* rBuff, void* buff, uint16_t size, uint16_t elem_size)
{
    buff = (uint8_t*)malloc(sizeof(rBuff->rBuffSize * rBuff->elemSize));
    rBuff->buff = buff;
    rBuff->rBuffSize = size;
    rBuff->elemSize = elem_size;
    rBuff->numElem = 0;
    rBuff->head = 0;
    rBuff->tail = 0;
}

void rBuffRelease(ringBuffer* rBuff)
{
    free(rBuff);
}

bool rBuffIsEmpty(ringBuffer* rBuff)
{
    return rBuff->numElem == 0;
}

bool rBuffIsFull(ringBuffer* rBuff)
{
    return rBuff->numElem == rBuff->rBuffSize;
}

void rBuffPush(void* valIn, ringBuffer* rBuff, uint32_t timeout)
{
    xSemaphoreTake(xSem, timeout);

    setValue(valIn, rBuff, rBuff->head);
    printf("Task push: buff[%d] = %d\n", rBuff->head, *valIn);
    rBuff->head = rBuff->head + rBuff->elemSize;
    if(rBuffIsFull(rBuff)) rBuff->tail = (rBuff->tail + rBuff->elemSize) % rBuff->rBuffSize;
    rBuff->head = rBuff->head % rBuff->rBuffSize;
    rBuff->numElem++;

    xSemaphoreGive(xSem);
}

void rBuffPop(void* valOut, ringBuffer* rBuff, uint32_t timeout)
{
    xSemaphoreTake(xSem, timeout);

    if(rBuffIsEmpty(rBuff)) valOut = rBuff;
    getValue(valOut, rBuff, rBuff->tail);
    printf("Task pop: buff[%d] = %d\n", rBuff->tail, *valOut);
    rBuff->tail= rBuff->tail + rBuff->elemSize;
    rBuff->tail = rBuff->tail % rBuff->rBuffSize;
    rBuff->numElem--;

    xSemaphoreGive(xSem);
}

void setValue(void* dataIn, ringBuffer* rBuff, uint16_t index)
{
    for(uint16_t i = 0; i < rBuff->elemSize; i++)
    {
        rBuff->buff[i + index] = *dataIn & (255 << (8 * (rBuff->elemSize - i - 1)));
    }
}

void getValue(void* dataOut, ringBuffer* rBuff, uint16_t index)
{
    for(uint16_t i = 0; i < rBuff->elemSize; i++)
    {
        *dataOut |= (rBuff->buff[i + index] << (8 * (rBuff->elemSize - i - 1)));
    }
}