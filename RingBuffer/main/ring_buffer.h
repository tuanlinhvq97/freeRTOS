#ifndef RING_BUFFER_H
#define RING_BUFFER_H

#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_spi_flash.h"
#include "freertos/semphr.h"
#include "esp_system.h"

SemaphoreHandle_t xSem;

typedef struct RingBuffer
{
    uint8_t *buff;
    uint16_t rBuffSize;
    uint16_t head;
    uint16_t tail;
    uint16_t numElem;
    uint16_t elemSize;
} ringBuffer;

void rBuffCreate(ringBuffer* rBuff,
                 void* buff,
                 uint16_t rBuffSize,
                 uint16_t elemSize);

void rBuffRelease(ringBuffer* rBuff, uint8_t* buff);

bool rBuffIsEmpty(ringBuffer* rBuff);

bool rBuffIsFull(ringBuffer* rBuff);

void setValue(uint32_t* data, ringBuffer* rBuff, uint16_t index);

void getValue(uint32_t* data, ringBuffer* rBuff, uint16_t index);

void rBuffPush(uint32_t* valIn, ringBuffer* rBuf, uint32_t timeout);

void rBuffPop(uint32_t* valOut, ringBuffer* rBuf, uint32_t timeout);

#endif /* RING_BUFFER_H */
