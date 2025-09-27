/*
 * Copyright (c) 2012-2014 Wind River Systems, Inc.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <stdio.h>
#include <zephyr\drivers\gpio.h>

// ===================================================
// DEFINES
// ===================================================
#define THREAD_PRIORITY	2
#define LED_NODE DT_ALIAS(led0)

K_THREAD_STACK_DEFINE(thread_stack, 500);

// ===================================================
// DECLARACIONES DE VARIABLES
// ===================================================
struct k_thread thread;
struct k_timer timerPeriodic;
struct k_timer timerOneShoot;

// Configuración del LED
static const struct gpio_dt_spec led = GPIO_DT_SPEC_GET(LED_NODE, gpios);

// ===================================================
// DECLARACIONES DE FUNCIONES
// ===================================================
static void threadFunction(void* p1, void* p2, void* p3);
static void timerPeriodicCallback(struct k_timer* timer_id);
static void timerOneShootCallback(struct k_timer* timer_id);

// ===================================================
// CUERPO DE FUNCIONES
// ===================================================
int main(void)
{
	int ret;
	
	printk("[MAIN] EJEMPLO: THREAD + TIMER + LED\n");
	
	// Verificar si el LED está disponible
	if (!gpio_is_ready_dt(&led)) {
		printk("[MAIN] Error: LED device no está listo\n");
		return -1;
	}

	// Configurar el LED como salida
	ret = gpio_pin_configure_dt(&led, GPIO_OUTPUT_ACTIVE);
	if (ret < 0) {
		printk("[MAIN] Error configurando LED: %d\n", ret);
		return -1;
	}
	
	// Inicializa el hilo
	k_tid_t threadId = k_thread_create(
		&thread,
		thread_stack,
		K_THREAD_STACK_SIZEOF(thread_stack),
		threadFunction,
		NULL, NULL, NULL,
		THREAD_PRIORITY,
		0,
		K_NO_WAIT
	);
	if (threadId == NULL)
		printk("[MAIN] No se pude crear el hilo");

	// Inicializa los timers
	k_timer_init(
		&timerPeriodic,				// Variable del tipo struct k_timer
		timerPeriodicCallback,		// Callback que se llama cuando finaliza 
		NULL						// Callback que se llama si se detiene el timer antes de terminar
	);
	
	k_timer_init(
		&timerOneShoot,				// Variable del tipo struct k_timer
		timerOneShootCallback,		// Callback que se llama cuando finaliza 
		NULL						// Callback que se llama si se detiene el timer antes de terminar
	);
	
	// Inicia los timers
	k_timer_start(
		&timerPeriodic,
		K_MSEC(1000),
		K_MSEC(1000)
	);

	k_timer_start(
		&timerOneShoot,
		K_MSEC(500),
		K_NO_WAIT
	);
	
	return 0;
}

static void threadFunction(void* p1, void* p2, void* p3)
{
	bool led_state = false;
	
	printk("[THREAD] Creado - Controlando LED\n");

	for(;;)
	{
		// Cambiar el estado del LED
		led_state = !led_state;
		gpio_pin_set_dt(&led, led_state);
		
		k_msleep(500);
	}
}static void timerPeriodicCallback(struct k_timer* timer_id)
{
	printk("[TIMER PERIODIC] Timer finalizado\n");
}

static void timerOneShootCallback(struct k_timer* timer_id)
{
	printk("[TIMER ONESHOOT] Timer oneshoot\n");
}
