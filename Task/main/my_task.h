#ifndef MY_TASK_H
#define MY_TASK_H

#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_spi_flash.h"
#include "freertos/semphr.h"
#include "esp_system.h"

/*
 * Task declaration
 */
void vTaskA(void* pvParam);
void vTaskB(void* pvParam);
void vTaskC(void* pvParam);

/*
 * Task Handle declaration
 */
TaskHandle_t taskHandleA;
TaskHandle_t taskHandleB;
TaskHandle_t taskHandleC;

/*
 * Task Priority declaration
 */
UBaseType_t uxTaskPriorityA;
UBaseType_t uxTaskPriorityB;
UBaseType_t uxTaskPriorityC;

#endif /* MY_TASK_H */