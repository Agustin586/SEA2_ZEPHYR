# FRDM-MCXC444 Software Timer Example

Este ejemplo demuestra el uso de **timers por software** en Zephyr RTOS utilizando la placa FRDM-MCXC444. El proyecto implementa tanto timers periódicos como de una sola ejecución (one-shot), junto con control de LED a través de hilos y GPIO.

## Tabla de Contenido

- [¿Qué son los Timers por Software?](#qué-son-los-timers-por-software)
- [Tipos de Timers en Zephyr](#tipos-de-timers-en-zephyr)
- [Funcionamiento del Código](#funcionamiento-del-código)
- [Arquitectura del Sistema](#arquitectura-del-sistema)
- [Configuración del Hardware](#configuración-del-hardware)
- [Compilación y Ejecución](#compilación-y-ejecución)
- [Salida Esperada](#salida-esperada)
- [Conceptos Clave de Zephyr](#conceptos-clave-de-zephyr)
- [Modificaciones Posibles](#modificaciones-posibles)

## ¿Qué son los Timers por Software?

Los **timers por software** son mecanismos que permiten ejecutar código después de un período de tiempo específico sin bloquear la ejecución del programa principal. A diferencia de los timers de hardware, estos son gestionados por el sistema operativo.

### Características principales:

- **No bloqueantes**: No detienen la ejecución de otros hilos
- **Callbacks**: Ejecutan funciones específicas al expirar
- **Flexibilidad**: Pueden ser periódicos o de una sola ejecución
- **Gestión automática**: El kernel se encarga de la temporización

### Casos de uso comunes:

- **Timeouts**: Para operaciones que pueden fallar
- **Tareas periódicas**: Ejecutar código a intervalos regulares
- **Delays programados**: Ejecutar acciones después de un tiempo específico
- **Watchdogs**: Monitoreo y recuperación del sistema

## Tipos de Timers en Zephyr

### 1. Timer Periódico (Periodic Timer)
- **Comportamiento**: Se ejecuta repetidamente a intervalos regulares
- **Uso**: Tareas que deben repetirse continuamente
- **Ejemplo**: Lectura de sensores, parpadeo de LED, heartbeat

### 2. Timer One-Shot (Una sola ejecución)
- **Comportamiento**: Se ejecuta una sola vez y luego se detiene
- **Uso**: Timeouts, delays programados, acciones diferidas
- **Ejemplo**: Timeout de comunicación, apagado automático

**Este ejemplo implementa ambos tipos de timers.**

## Funcionamiento del Código

### Configuración del Hardware (LED)

```c
#define LED_NODE DT_ALIAS(led0)
static const struct gpio_dt_spec led = GPIO_DT_SPEC_GET(LED_NODE, gpios);

// Verificar disponibilidad del LED
if (!gpio_is_ready_dt(&led)) {
    printk("[MAIN] Error: LED device no está listo\n");
    return -1;
}

// Configurar como salida
ret = gpio_pin_configure_dt(&led, GPIO_OUTPUT_ACTIVE);
```

- Utiliza **Device Tree** para obtener la configuración del LED
- Verifica que el dispositivo GPIO esté listo
- Configura el pin como salida activa

### Creación de Timers

#### Timer Periódico:
```c
struct k_timer timerPeriodic;

k_timer_init(
    &timerPeriodic,           // Estructura del timer
    timerPeriodicCallback,    // Callback al expirar
    NULL                      // Callback si se detiene (opcional)
);

k_timer_start(
    &timerPeriodic,
    K_MSEC(1000),            // Primer disparo en 1000ms
    K_MSEC(1000)             // Repetir cada 1000ms
);
```

#### Timer One-Shot:
```c
struct k_timer timerOneShoot;

k_timer_init(
    &timerOneShoot,
    timerOneShootCallback,
    NULL
);

k_timer_start(
    &timerOneShoot,
    K_MSEC(500),             // Disparar en 500ms
    K_NO_WAIT                // NO repetir (one-shot)
);
```

### Hilo de Control del LED (`threadFunction`)

```c
static void threadFunction(void* p1, void* p2, void* p3)
{
    bool led_state = false;
    
    for(;;) {
        led_state = !led_state;        // Alternar estado
        gpio_pin_set_dt(&led, led_state);  // Aplicar al LED
        k_msleep(500);                 // Esperar 500ms
    }
}
```

**Funciones:**
- Alterna el estado del LED cada 500ms
- Usa `gpio_pin_set_dt()` para controlar el GPIO
- Corre independientemente de los timers

### Callbacks de los Timers

```c
static void timerPeriodicCallback(struct k_timer* timer_id)
{
    printk("[TIMER PERIODIC] Timer finalizado\n");
}

static void timerOneShootCallback(struct k_timer* timer_id)
{
    printk("[TIMER ONESHOOT] Timer oneshoot\n");
}
```

- **Periódico**: Se ejecuta cada 1000ms indefinidamente
- **One-shot**: Se ejecuta solo una vez a los 500ms del inicio

## Arquitectura del Sistema

```
[Main Thread]
     │
     ├── Configura GPIO (LED)
     ├── Crea Thread de control LED
     ├── Inicializa Timer Periódico (1000ms)
     └── Inicializa Timer One-Shot (500ms)
                     │
        ┌────────────┼────────────┐
        │            │            │
   [LED Thread]  [Timer Periodic] [Timer One-Shot]
   (Toggle 500ms)  (Callback 1s)  (Callback 500ms, once)
        │               │              │
        ▼               ▼              ▼
   [LED Blink]    [Print Message] [Print Message]
```

### Timeline de Ejecución:

```
Tiempo:  0ms   500ms   1000ms  1500ms  2000ms  2500ms  3000ms
         │      │       │       │       │       │       │
LED:     ON ────┼── OFF ┼── ON  ┼─ OFF  ┼── ON  ┼─ OFF  ┼── ON
         │      │       │       │       │       │       │
Timers:  │      │       │       │       │       │       │
         │   OneShot    │    Periodic   │    Periodic   │
         └─ Start ──────┘       │       └───────│───────┘
                                │               │
                            [Callback]      [Callback]
```

## Configuración del Hardware

### Placa: FRDM-MCXC444
- **MCU**: NXP MCX C444 (ARM Cortex-M0+)
- **Frecuencia**: Hasta 48 MHz
- **RAM**: 6 KB
- **Flash**: 32 KB
- **LED**: LED0 conectado según Device Tree

### Device Tree Configuration
El LED se configura automáticamente a través del Device Tree:
- `led0` alias apunta al GPIO correspondiente
- La configuración específica está en los archivos `.dts` del board

### Configuración del Proyecto (`prj.conf`):
```
# nothing here
```
Este ejemplo usa la configuración mínima de Zephyr, aprovechando las configuraciones por defecto.

## Compilación y Ejecución

### Prerrequisitos
- Zephyr SDK instalado
- West tool configurado
- Toolchain de ARM GCC

### Comandos de Compilación

1. **Limpiar el proyecto**:
```bash
Remove-Item -Recurse -Force debug
```

2. **Configurar el proyecto**:
```bash
cmake --preset debug
```

3. **Compilar**:
```bash
cmake --build debug --target all
```

4. **Flashear a la placa**:
```bash
cmake --build debug --target flash
```

### Monitoreo de la Salida
```bash
# Conectar a la consola serie (ajustar puerto COM)
minicom -D /dev/ttyACM0 -b 115200
# O en Windows:
# Utilizar PuTTY o similar en el puerto COM correspondiente
```

## Salida Esperada

```
[MAIN] EJEMPLO: THREAD + TIMER + LED
[THREAD] Creado - Controlando LED
[TIMER ONESHOOT] Timer oneshoot        // A los 500ms (solo una vez)
[TIMER PERIODIC] Timer finalizado      // A los 1000ms
[TIMER PERIODIC] Timer finalizado      // A los 2000ms
[TIMER PERIODIC] Timer finalizado      // A los 3000ms
[TIMER PERIODIC] Timer finalizado      // A los 4000ms
...
```

### Comportamiento Observado:
- **LED**: Parpadea cada 500ms continuamente
- **Timer One-Shot**: Mensaje solo a los 500ms del inicio
- **Timer Periódico**: Mensaje cada 1000ms indefinidamente
- **Ejecución concurrente**: LED y timers funcionan independientemente

## Conceptos Clave de Zephyr

### 1. Inicialización de Timers
```c
void k_timer_init(struct k_timer *timer, k_timer_expiry_t expiry_fn, k_timer_stop_t stop_fn);
```
- `expiry_fn`: Callback ejecutado al expirar
- `stop_fn`: Callback ejecutado si se detiene antes (opcional)

### 2. Control de Timers
```c
void k_timer_start(struct k_timer *timer, k_timeout_t duration, k_timeout_t period);
```
- `duration`: Tiempo hasta el primer disparo
- `period`: Intervalo de repetición (`K_NO_WAIT` para one-shot)

### 3. Device Tree GPIO
```c
#define LED_NODE DT_ALIAS(led0)
static const struct gpio_dt_spec led = GPIO_DT_SPEC_GET(LED_NODE, gpios);
```

### 4. Control GPIO
```c
int gpio_pin_configure_dt(const struct gpio_dt_spec *spec, gpio_flags_t extra_flags);
int gpio_pin_set_dt(const struct gpio_dt_spec *spec, int value);
```

### 5. Verificación de Dispositivos
```c
bool gpio_is_ready_dt(const struct gpio_dt_spec *spec);
```

## Modificaciones Posibles

### 1. Cambiar Períodos de Timer
```c
// Timer más rápido (500ms)
k_timer_start(&timerPeriodic, K_MSEC(500), K_MSEC(500));

// Timer más lento (2 segundos)
k_timer_start(&timerPeriodic, K_MSEC(2000), K_MSEC(2000));
```

### 2. Timer One-Shot Repetitivo
```c
static void timerOneShootCallback(struct k_timer* timer_id)
{
    printk("[TIMER ONESHOOT] Timer oneshoot ejecutado\n");
    
    // Reiniciar el timer para que se ejecute de nuevo
    k_timer_start(&timerOneShoot, K_MSEC(3000), K_NO_WAIT);
}
```

### 3. Control de LED desde Timer
```c
static void timerPeriodicCallback(struct k_timer* timer_id)
{
    static bool timer_led_state = false;
    
    timer_led_state = !timer_led_state;
    gpio_pin_set_dt(&led, timer_led_state);
    
    printk("[TIMER PERIODIC] LED estado: %s\n", 
           timer_led_state ? "ON" : "OFF");
}
```

### 4. Múltiples LEDs
```c
#define LED1_NODE DT_ALIAS(led1)
static const struct gpio_dt_spec led1 = GPIO_DT_SPEC_GET(LED1_NODE, gpios);

static void timerPeriodicCallback(struct k_timer* timer_id)
{
    static bool led1_state = false;
    led1_state = !led1_state;
    gpio_pin_set_dt(&led1, led1_state);
}
```

### 5. Timer con Datos
```c
struct timer_data {
    int counter;
    const char* name;
};

static struct timer_data periodic_data = {0, "Periodic"};

static void timerPeriodicCallback(struct k_timer* timer_id)
{
    struct timer_data *data = k_timer_user_data_get(timer_id);
    data->counter++;
    printk("[%s TIMER] Ejecutado %d veces\n", data->name, data->counter);
}

// En main()
k_timer_user_data_set(&timerPeriodic, &periodic_data);
```

### 6. Detener Timer Condicionalmente
```c
static void timerPeriodicCallback(struct k_timer* timer_id)
{
    static int count = 0;
    count++;
    
    printk("[TIMER PERIODIC] Ejecución #%d\n", count);
    
    if (count >= 10) {
        k_timer_stop(timer_id);
        printk("[TIMER PERIODIC] Detenido después de 10 ejecuciones\n");
    }
}
```

### 7. Timer de Watchdog
```c
struct k_timer watchdog_timer;

static void watchdog_callback(struct k_timer* timer_id)
{
    printk("[WATCHDOG] Sistema OK - Reiniciando watchdog\n");
    k_timer_start(&watchdog_timer, K_MSEC(5000), K_NO_WAIT);
}
```

## Comparación con Otros Mecanismos

| Mecanismo | Bloquea | Precisión | Uso típico | Overhead |
|-----------|---------|-----------|------------|----------|
| **k_msleep()** | Sí | Media | Delays simples | Bajo |
| **k_timer** | No | Alta | Tareas periódicas | Medio |
| **k_work** | No | Baja | Trabajo diferido | Alto |
| **Hardware Timer** | No | Muy alta | Control preciso | Muy bajo |

## Depuración y Troubleshooting

### Problemas Comunes:

1. **LED no funciona**:
   - Verificar que `gpio_is_ready_dt()` retorne `true`
   - Comprobar configuración del Device Tree
   - Verificar conexión física del LED

2. **Timers no se ejecutan**:
   - Asegurar que `k_timer_init()` se llama antes que `k_timer_start()`
   - Verificar que los callbacks estén definidos correctamente
   - Comprobar que el programa principal no termine

3. **Timing incorrecto**:
   - Los timers por software tienen resolución limitada (tick del sistema)
   - Para mayor precisión, considerar hardware timers

4. **Memory leaks**:
   - Usar `k_timer_stop()` antes de salir si es necesario
   - Los timers se limpian automáticamente al finalizar el programa

### Tips de Optimización:

- **Stack size**: 500 bytes es suficiente para esta aplicación simple
- **Prioridades**: Timer callbacks tienen alta prioridad por defecto
- **Callbacks cortos**: Evitar operaciones largas en callbacks de timer
- **Usar work queues**: Para trabajo pesado desde callbacks de timer

---

**Autor**: Zuliani, Agustín  
**Proyecto**: Zephyr SEA2 - Ejemplos FRDM-MCXC444  
**Fecha**: 2025