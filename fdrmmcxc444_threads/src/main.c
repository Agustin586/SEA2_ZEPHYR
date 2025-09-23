/*
 * Copyright (c) 2016 Intel Corporation
 *
 * SPDX-License-Identifier: Apache-2.0
 * 
 * File: main.c.
 * Name: Uso de Hilos en Zephyr.
 */

#include <stdio.h>
#include <zephyr/kernel.h>
#include <zephyr/drivers/gpio.h>

#define STACK_SIZE 512
#define PRIORITY 5
#define PRIORIDAD_HILO_ESTATICO 3
#define PRIORIDAD_HILO_DINAMICO 4

/* HILO ESTATICO */
/**
 * @brief Hilo de ejecución estático.
 * @param *p1 Argumento de entrada 1
 * @param *p2 Argumento de entrada 2
 * @param *p3 Argumento de entrada 3
 */
void hilo_estatico (void *p1, void *p2, void *p3);

void hilo_estatico (void *p1, void *p2, void *p3) {
	while (1) {
		printk("Hilo estático ejecutando....\n");
		k_sleep(K_MSEC(1000));
	}
}

/**
 * @brief Define el hilo en tiempo de ejecución.
 */
K_THREAD_DEFINE(hilo_estatico_id, 
				STACK_SIZE,
				hilo_estatico,
				NULL,
				NULL,
				NULL,
				PRIORIDAD_HILO_ESTATICO,
				0,
				0);

/* HILO DINÁMICO */
/**
 * @brief Define en tiempo de compilación el stack necesario.
 */
K_THREAD_STACK_DEFINE(hilo_dinamico_stack, STACK_SIZE);
struct k_thread hilo_dinamico_data;

void hilo_dinamico(void *p1, void *p2, void *p3);

void hilo_dinamico(void *p1, void *p2, void *p3)
{
	while (1)
	{
		printk("Hilo dinamico ejecutando...\n");
		k_sleep(K_MSEC(500));
	}
}

int main ()
{
	printk("Sistema iniciado: creando hilo dinamico.\n");

	// Crea el hilo dinámico
	k_thread_create(&hilo_dinamico_data, hilo_dinamico_stack,
                    K_THREAD_STACK_SIZEOF(hilo_dinamico_stack),
                    hilo_dinamico, NULL, NULL, NULL,
                    PRIORIDAD_HILO_DINAMICO, 0, K_NO_WAIT);

	return 0;
}