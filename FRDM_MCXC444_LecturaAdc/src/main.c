/*
 * Copyright (c) 2016 Intel Corporation
 *
 * SPDX-License-Identifier: Apache-2.0
 * 
 * Autor: Zuliani, Agustin
 * Fecha: 04/10/25
 * Descripcion:
 * 		- Configuracion de ADC utilizando Device Tree
 * 		- Lectura del sensor de temperatura interno
 * 
 * https://academy.nordicsemi.com/courses/nrf-connect-sdk-intermediate/lessons/lesson-6-analog-to-digital-converter-adc/topic/exercise-1-interfacing-with-adc-using-zephyr-api/
 */

#include <stdio.h>
#include <zephyr/kernel.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/drivers/adc.h>
#include <zephyr/sys/printk.h>
#include <zephyr/sys/util.h>
#include <zephyr/logging/log.h>

LOG_MODULE_REGISTER(MAIN, LOG_LEVEL_INF);

// ===================================================
// DEFINES
// ===================================================
// --- TEMPERATURE CALCULATION CTES FOR MCXC444 ---
#define TEMP_SENSOR_SLOPE_MV_PER_C 	1.62f
#define TEMP_SENSOR_OFFSET_MV 		716.0f
#define TEMP_REFERENCE_C			25.0f
#define ADC_VREF_MV					3300.0f

// --- THREAD CONFIGURATION ---
#define THREAD_TEMP_STACKSIZE 1500
#define THREAD_TEMP_PRIORITY  5

// ===================================================
// GLOBAL VARIABLES
// ===================================================
// --- LED ---
#define LED0_NODE DT_ALIAS(led0)
static const struct gpio_dt_spec led = GPIO_DT_SPEC_GET(LED0_NODE, gpios);

// --- ADC DEVICE AND CONFIGURATION ---
static const struct adc_dt_spec adc_channel = ADC_DT_SPEC_GET(DT_PATH(zephyr_user));
static int16_t adc_buffer[1];
struct adc_sequence sequence = {
	.buffer = &adc_buffer,
	.buffer_size = sizeof(adc_buffer),
};
float temperature = 0;

// --- SEMAPHORE FOR ADC ---
K_SEM_DEFINE(semTemp, 0, 1);

// --- TIMER ---
struct k_timer timerPeriodic;

// ===================================================
// DECLARED FUNCTIONS
// ===================================================
static void threadTemp(void *p1, void *p2, void *p3);
static void timerPeriodicCallback(struct k_timer* timer_id);

K_THREAD_DEFINE(
	threadTempId, 
	THREAD_TEMP_STACKSIZE, 
	threadTemp,
	NULL, NULL, NULL,
	THREAD_TEMP_PRIORITY,
	0,
	0
);

// ===================================================
// BODY FUNCTIONS
// ===================================================

/**
 * Convierte del valor del ADC a temperatura
 */
static float adcToTemperature(int16_t adcValue)
{
	// Convert ADC value to voltage (mV)
    float voltage_mv = ((float)adcValue * ADC_VREF_MV) / ((1 << 12) - 1);
    
    // Convert voltage to temperature using linear equation
    float temperature = TEMP_REFERENCE_C - ((voltage_mv - TEMP_SENSOR_OFFSET_MV) / TEMP_SENSOR_SLOPE_MV_PER_C);
    
    return temperature;
}

/**
 * Inicializa el adc
 */
static bool adcInit(void)
{
	// --- SE FIJA SI YA ESTA LISTO EL DEVICE TREE ---
	if (!adc_is_ready_dt(&adc_channel))
	{
		LOG_ERR("ADC controller device %s not ready\n", adc_channel.dev->name);
		return 0;
	}
	else
		LOG_INF("ADC Device Tree Ready");

	// --- CONFIGURA EL CANAL DEL ADC ---
	int err = adc_channel_setup_dt(&adc_channel);
	if (err < 0)
	{
		LOG_ERR("Could not setup channel #%d (%d)\n",0, err);
		return 0;
	}

	// --- INICIALIZA LA SECUENCIA DEL ADC ---
	err = adc_sequence_init_dt(&adc_channel, &sequence);
	if (err < 0)
	{
		LOG_ERR("Could not initialize sequence\n");
		return 0;
	}

	return true;
}

/**
 * Lee el valor de la temperatura
 */
static int readTemperature(float *temperature)
{
	int err;

	// --- LEE LA TEMPERATURA ---
	err = adc_read_dt(
		&adc_channel,
		&sequence
	);
	
	if (err < 0)
	{
		LOG_ERR("Could not read ADC (%d)", err);
		return err;
	}

	// --- CONVIERTE DEL ADC A TEMPERATURA ---
	*temperature = adcToTemperature(adc_buffer[0]);

	return 0;
}

/**
 * Thread que lee la temperatura
 */
static void threadTemp(void *p1, void *p2, void *p3)
{
	ARG_UNUSED(p1);
	ARG_UNUSED(p2);
	ARG_UNUSED(p3);

	int sample_count = 0;

	LOG_INF("[THREAD TEMP] Created\n");

	if (!adcInit())
	{
		LOG_ERR("Failed to initialize ADC");
		return;
	}
	LOG_INF("[THREAD TEMP] ADC configured");

	k_timer_start(
		&timerPeriodic,
		K_MSEC(1000),
		K_MSEC(1000)
	);
	LOG_INF("[THREAD TEMP] Timer Periodic started");

	while (1) {
        // Esperar a que la conversión termine
        k_sem_take(&semTemp, K_FOREVER);

        // Procesar el resultado
        sample_count++;
		readTemperature(&temperature);

        LOG_INF("Sample #%d: ADC=%d, Voltage=%.1f mV, Temp=%.2f°C",
                sample_count, adc_buffer[0],
                (double)((float)adc_buffer[0] * ADC_VREF_MV) / ((1 << 12) - 1),
                (double)temperature);

        // Indicar actividad con el LED
        gpio_pin_set_dt(&led, 1);
        k_msleep(100);
        gpio_pin_set_dt(&led, 0);

        // Esperar antes de la próxima conversión
        k_msleep(10);
    }
}

/**
 * Main application
 */
int main(void)
{
    LOG_INF("=== FRDM-MCXC444 ADC Temperature Monitor ===");

    if (!gpio_is_ready_dt(&led)) {
        LOG_ERR("LED device not ready");
        return -1;
    }

    int err = gpio_pin_configure_dt(&led, GPIO_OUTPUT_INACTIVE);
    if (err < 0) {
        LOG_ERR("Failed to configure LED pin (%d)", err);
        return -1;
    }
	LOG_INF("Gpio initialized");

	// Inicializa los timers
	k_timer_init(
		&timerPeriodic,				// Variable del tipo struct k_timer
		timerPeriodicCallback,		// Callback que se llama cuando finaliza 
		NULL						// Callback que se llama si se detiene el timer antes de terminar
	);
	LOG_INF("Timer Periodic initialized");

    LOG_INF("System initialized. Starting temperature monitoring...");

    return 0;
}


static void timerPeriodicCallback(struct k_timer* timer_id)
{
	LOG_INF("[TIMER PERIODIC] Lectura del ADC\n");
	k_sem_give(&semTemp);
}