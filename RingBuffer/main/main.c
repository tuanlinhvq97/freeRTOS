/* Hello World Example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
#include "ring_buffer.h"

ringBuffer rBuffer;
uint32_t dataRingBuff;
uint8_t buff;

static void pushTask(void* param)
{
    while(1)
    {
        dataRingBuff = rBuffer.head;
        rBuffPush(&dataRingBuff, &rBuffer, 1000);
    }
}

static void popTask(void* param)
{
    while(1)
    {
        rBuffPop(&dataRingBuff, &rBuffer, 2000);
    }
}

void app_main()
{
    rBuffCreate(&rBuffer, &buff, 32, 4);
    xSem = xSemaphoreCreateMutex();
    dataRingBuff = 0;

    xTaskCreate(&pushTask, "pushTask", 2048, NULL, 10, NULL);
    xTaskCreate(&popTask, "popTask", 2048, NULL, 10, NULL);
}
