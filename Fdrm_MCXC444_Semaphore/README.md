# FRDM-MCXC444 Semaphore Example

Este ejemplo demuestra el uso de **semáforos** en Zephyr RTOS utilizando la placa FRDM-MCXC444. El proyecto implementa un patrón de sincronización donde un hilo productor genera señales y un hilo consumidor las procesa utilizando un semáforo binario.

## Tabla de Contenido

- [¿Qué es un Semáforo?](#qué-es-un-semáforo)
- [Tipos de Semáforos](#tipos-de-semáforos)
- [Funcionamiento del Código](#funcionamiento-del-código)
- [Arquitectura del Sistema](#arquitectura-del-sistema)
- [Configuración del Hardware](#configuración-del-hardware)
- [Compilación y Ejecución](#compilación-y-ejecución)
- [Salida Esperada](#salida-esperada)
- [Conceptos Clave de Zephyr](#conceptos-clave-de-zephyr)
- [Modificaciones Posibles](#modificaciones-posibles)

## ¿Qué es un Semáforo?

Un **semáforo** es un mecanismo de sincronización que permite controlar el acceso a recursos compartidos en sistemas multihilo. Funciona como un contador que puede ser incrementado (`give`) o decrementado (`take`) de manera atómica.

### Características principales:

- **Contador interno**: Lleva la cuenta de recursos disponibles
- **Operaciones atómicas**: `give` y `take` son thread-safe
- **Bloqueo**: Los hilos pueden esperar hasta que el recurso esté disponible
- **Sincronización**: Coordina la ejecución entre múltiples hilos

### Casos de uso comunes:

- **Acceso exclusivo**: Control de acceso a recursos compartidos
- **Señalización**: Comunicación entre hilos (evento ocurrido)
- **Conteo de recursos**: Gestión de un pool limitado de recursos

## Tipos de Semáforos

### 1. Semáforo Binario (Binary Semaphore)
- **Contador**: 0 o 1
- **Uso**: Señalización entre hilos o acceso exclusivo
- **Equivalente**: Similar a un mutex para señalización

### 2. Semáforo Contador (Counting Semaphore)
- **Contador**: 0 hasta un valor máximo
- **Uso**: Gestión de múltiples recursos idénticos
- **Ejemplo**: Pool de buffers o conexiones

**Este ejemplo usa un semáforo binario (valor máximo = 1).**

## Funcionamiento del Código

### Configuración del Semáforo

```c
struct k_sem sem;  // Declaración del semáforo

int status = k_sem_init(
    &sem,  // Puntero al semáforo
    0,     // Valor inicial (0 = no disponible)
    1);    // Valor máximo (1 = binario)
```

- **Valor inicial 0**: El semáforo comienza "tomado" (no disponible)
- **Valor máximo 1**: Solo puede tener valores 0 o 1 (binario)

### Creación Dinámica de Hilos

El código utiliza creación dinámica en lugar de `K_THREAD_DEFINE`:

```c
k_tid_t threadProducerId = k_thread_create(
    &threadProducerData,           // Control block del hilo
    stackThreadProducer,           // Stack del hilo
    K_THREAD_STACK_SIZEOF(stackThreadProducer),  // Tamaño del stack
    threadProducer,                // Función del hilo
    NULL, NULL, NULL,              // Parámetros
    PRIORITY,                      // Prioridad
    0,                            // Opciones
    K_NO_WAIT);                   // Iniciar inmediatamente
```

### Hilo Productor (`threadProducer`)

```c
void threadProducer(void *p1, void *p2, void *p3)
{
    while (1) {
        printk("[THREAD PRODUCER] Give Semaphore\n");
        k_sem_give(&sem);  // Incrementa el contador del semáforo
        k_msleep(500);     // Espera 500ms
    }
}
```

**Funciones:**
- Cada 500ms "libera" el semáforo (`k_sem_give`)
- Incrementa el contador del semáforo de 0 a 1
- Señaliza al consumidor que hay un "evento" disponible

### Hilo Consumidor (`threadConsumer`)

```c
void threadConsumer(void *p1, void *p2, void *p3)
{
    while (1) {
        if (k_sem_take(&sem, K_MSEC(10)) == 0)
            printk("[THREAD CONSUMER] Take Semaphore\n");
    }
}
```

**Funciones:**
- Intenta "tomar" el semáforo con timeout de 10ms
- Si está disponible (contador > 0), lo decrementa y procesa
- Si no está disponible, continúa sin bloquearse

### Hilo Principal (`main`)

```c
int main(void)
{
    // Crear hilos
    // Inicializar semáforo
    
    while (1) {
        printk("[MAIN] Running\n");
        k_msleep(2000);  // Muestra actividad cada 2 segundos
    }
}
```

## Arquitectura del Sistema

```
[Thread Producer]     [Semaphore]     [Thread Consumer]
     (P=2)              (0/1)             (P=1)
       │                  │                 │
       │ k_sem_give()     │                 │
       ├─────────────────►│                 │
       │    (500ms)       │ k_sem_take()    │
       │                  │◄────────────────┤
       │                  │    (10ms TO)    │
       ▼                  ▼                 ▼
   [Cada 500ms]       [Counter]         [Procesa inmediatamente]
```

### Prioridades:
- **Consumer**: Prioridad 1 (más alta)
- **Producer**: Prioridad 2 (más baja)
- **Main**: Prioridad por defecto

### Flujo de Ejecución:

1. **Inicio**: Se crean los hilos y se inicializa el semáforo (contador = 0)
2. **Producer**: Cada 500ms hace `k_sem_give()` (contador: 0→1)
3. **Consumer**: Constantemente intenta `k_sem_take()` con timeout 10ms
4. **Sincronización**: Cuando el producer da el semáforo, el consumer lo toma inmediatamente
5. **Resultado**: El consumer procesa aproximadamente cada 500ms

## Configuración del Hardware

### Placa: FRDM-MCXC444
- **MCU**: NXP MCX C444 (ARM Cortex-M0+)
- **Frecuencia**: Hasta 48 MHz
- **RAM**: 6 KB
- **Flash**: 32 KB

### Configuración del Proyecto (`prj.conf`):
```
CONFIG_PRINTK=y              # Habilita salida por consola
CONFIG_HEAP_MEM_POOL_SIZE=256  # Define el tamaño del heap
CONFIG_ASSERT=y              # Habilita aserciones para debug
CONFIG_GPIO=y                # Habilita soporte GPIO
```

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
[SEMAPHORE] Created
[THREAD PRODUCER] Created
[THREAD CONSUMER] Created
[MAIN] Running
[THREAD PRODUCER] Give Semaphore
[THREAD CONSUMER] Take Semaphore
[THREAD PRODUCER] Give Semaphore
[THREAD CONSUMER] Take Semaphore
[MAIN] Running
[THREAD PRODUCER] Give Semaphore
[THREAD CONSUMER] Take Semaphore
[THREAD PRODUCER] Give Semaphore
[THREAD CONSUMER] Take Semaphore
...
```

### Interpretación:
- **Cada ~500ms**: Aparece el par "Give/Take Semaphore"
- **Cada 2s**: Aparece "[MAIN] Running"
- **Sincronización**: El consumer responde inmediatamente al producer
- **Sin bloqueos**: El timeout de 10ms evita que el consumer se quede esperando

## Conceptos Clave de Zephyr

### 1. Inicialización de Semáforos
```c
int k_sem_init(struct k_sem *sem, unsigned int initial_count, unsigned int limit);
```
- `initial_count`: Valor inicial del contador
- `limit`: Valor máximo del contador

### 2. Operaciones de Semáforo
```c
void k_sem_give(struct k_sem *sem);              // Incrementa contador
int k_sem_take(struct k_sem *sem, k_timeout_t timeout);  // Decrementa contador
```

### 3. Creación Dinámica de Hilos
```c
k_tid_t k_thread_create(struct k_thread *new_thread, k_thread_stack_t *stack,
                       size_t stack_size, k_thread_entry_t entry,
                       void *p1, void *p2, void *p3,
                       int prio, uint32_t options, k_timeout_t delay);
```

### 4. Gestión de Stack
```c
K_THREAD_STACK_DEFINE(stack_name, size);  // Define stack
K_THREAD_STACK_SIZEOF(stack_name);        // Obtiene tamaño
```

### 5. Timeouts
- `K_NO_WAIT`: No bloquear
- `K_FOREVER`: Esperar indefinidamente  
- `K_MSEC(x)`: Esperar X milisegundos

## Modificaciones Posibles

### 1. Semáforo Contador
```c
k_sem_init(&sem, 0, 5);  // Permite hasta 5 recursos
```

### 2. Cambiar Timing
```c
// Producer más rápido
k_msleep(200);

// Consumer con timeout mayor
k_sem_take(&sem, K_MSEC(100));
```

### 3. Múltiples Productores
```c
K_THREAD_STACK_DEFINE(stackThreadProducer2, STACK_SIZE);
struct k_thread threadProducer2Data;

k_thread_create(&threadProducer2Data, stackThreadProducer2,
                K_THREAD_STACK_SIZEOF(stackThreadProducer2),
                threadProducer, NULL, NULL, NULL,
                PRIORITY, 0, K_NO_WAIT);
```

### 4. Consumer Bloqueante
```c
void threadConsumer(void *p1, void *p2, void *p3)
{
    while (1) {
        k_sem_take(&sem, K_FOREVER);  // Bloquear hasta recibir
        printk("[THREAD CONSUMER] Take Semaphore\n");
    }
}
```

### 5. Usar Definición Estática
```c
K_SEM_DEFINE(sem, 0, 1);  // Define semáforo estáticamente
```

### 6. Contar Eventos
```c
static int event_count = 0;

void threadConsumer(void *p1, void *p2, void *p3)
{
    while (1) {
        if (k_sem_take(&sem, K_MSEC(10)) == 0) {
            event_count++;
            printk("[CONSUMER] Event #%d processed\n", event_count);
        }
    }
}
```

## Comparación: Semáforo vs Queue vs Mutex

| Mecanismo | Propósito | Datos | Uso típico |
|-----------|-----------|-------|------------|
| **Semáforo** | Sincronización/Señalización | No transfiere datos | Eventos, conteo de recursos |
| **Queue** | Comunicación | Transfiere datos estructurados | IPC entre hilos |
| **Mutex** | Exclusión mutua | No transfiere datos | Protección de secciones críticas |

## Depuración y Troubleshooting

### Problemas Comunes:

1. **Hilos no se crean**:
   - Verificar que `k_thread_create()` retorne un valor válido (no NULL)
   - Comprobar tamaño de stack suficiente

2. **Consumer no responde**:
   - Verificar que el timeout no sea muy pequeño
   - Asegurar que el producer esté haciendo `k_sem_give()`

3. **Demasiados mensajes**:
   - El timeout del consumer (10ms) puede ser muy pequeño
   - Considerar usar `K_FOREVER` con `k_sem_take()`

4. **Error de compilación**:
   - Verificar que todas las declaraciones estén correctas
   - Comprobar includes necesarios

### Tips de Optimización:

- **Prioridades**: El consumer tiene mayor prioridad para respuesta rápida
- **Timeout**: 10ms es lo suficientemente pequeño para respuesta rápida
- **Stack size**: 1024 bytes es generoso para estas funciones simples

---

**Autor**: Zuliani, Agustín  
**Proyecto**: Zephyr SEA2 - Ejemplos FRDM-MCXC444  
**Fecha**: 2025