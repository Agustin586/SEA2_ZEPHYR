/*
 * Copyright (c) 2017 Linaro Limited
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <zephyr/kernel.h>
#include <zephyr/device.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/sys/printk.h>
#include <zephyr/sys/__assert.h>
#include <string.h>

// =======================================================
// DEFINES
// =======================================================
#define STACK_SIZE 1024
#define PRIORITY 2

// =======================================================
// DECLARACIONES DE VARIABLES
// =======================================================
K_THREAD_STACK_DEFINE(stackThreadProducer, STACK_SIZE);
K_THREAD_STACK_DEFINE(stackThreadConsumer, STACK_SIZE);
struct k_thread threadProducerData;
struct k_thread threadConsumerData;
struct k_sem sem;

// =======================================================
// DECLARACIONES DE FUNCIONES
// =======================================================
void threadProducer(void *p1, void *p2, void *p3);
void threadConsumer(void *p1, void *p2, void *p3);

// =======================================================
// CUERPO DE FUNCIONES
// =======================================================
int main(void)
{
	// --- CONFIGURA LOS HILOS ---
	k_tid_t threadProducerId = k_thread_create(
		&threadProducerData,
		stackThreadProducer,
		K_THREAD_STACK_SIZEOF(stackThreadProducer),
		threadProducer,
		NULL,
		NULL,
		NULL,
		PRIORITY,
		0,
		K_NO_WAIT);
	if (threadProducerId == NULL)
		printk("[ERROR] No se pudo crear la tarea threadProducer");

	k_tid_t threadConsumerId = k_thread_create(
		&threadConsumerData,
		stackThreadConsumer,
		K_THREAD_STACK_SIZEOF(stackThreadConsumer),
		threadConsumer,
		NULL,
		NULL,
		NULL,
		PRIORITY - 1, // Valor de prioridad mas baja significa que tiene mas prioridad el hilo
		0,
		K_NO_WAIT);
	if (threadConsumerId == NULL)
		printk("[ERROR] No se pude crear la tarea threadConsumer");

	// --- CONFIGURA EL SEMAFORO ---
	int status = k_sem_init(
		&sem, // Puntero al semaforo creado
		0,    // Valor inicial del contador del semaforo
		1);   // Valor maximo del contador
	if (status == 0)
		printk("[SEMAPHORE] Created\n");

	while (1)
	{
		printk("[MAIN] Running\n");
		k_msleep(2000);
	}

	return 0;
}

void threadProducer(void *p1, void *p2, void *p3)
{
	printk("[THREAD PRODUCER] Created\n");

	while (1)
	{
		printk("[THREAD PRODUCER] Give Semaphore\n");
		k_sem_give(&sem);

		k_msleep(500);
	}
}

void threadConsumer(void *p1, void *p2, void *p3)
{
	printk("[THREAD CONSUMER] Created\n");
    
	while (1)
	{
		if (k_sem_take(&sem, K_MSEC(10)) == 0)
			printk("[THREAD CONSUMER] Take Semaphore\n");
	}
}