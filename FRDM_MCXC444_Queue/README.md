# FRDM-MCXC444 Queue Example

Este ejemplo demuestra el uso de **colas de mensajes (queues)** en Zephyr RTOS utilizando la placa FRDM-MCXC444. El proyecto implementa un patrón productor-consumidor donde un hilo genera datos y otro los consume a través de una cola.

## Tabla de Contenido

- [¿Qué es una Cola (Queue)?](#qué-es-una-cola-queue)
- [Funcionamiento del Código](#funcionamiento-del-código)
- [Arquitectura del Sistema](#arquitectura-del-sistema)
- [Configuración del Hardware](#configuración-del-hardware)
- [Compilación y Ejecución](#compilación-y-ejecución)
- [Salida Esperada](#salida-esperada)
- [Conceptos Clave de Zephyr](#conceptos-clave-de-zephyr)
- [Modificaciones Posibles](#modificaciones-posibles)

## ¿Qué es una Cola (Queue)?

Una **cola** es una estructura de datos que sigue el principio **FIFO (First In, First Out)**, donde el primer elemento que entra es el primero que sale. En sistemas operativos de tiempo real como Zephyr, las colas se utilizan para:

- **Comunicación entre hilos**: Permite que diferentes hilos intercambien datos de manera segura.
- **Sincronización**: Los hilos pueden bloquearse esperando datos, lo que ayuda a sincronizar la ejecución.
- **Desacoplamiento**: El productor y consumidor no necesitan ejecutarse al mismo tiempo.

### Características de las Colas en Zephyr:

- **Thread-safe**: Múltiples hilos pueden acceder a la cola sin problemas de concurrencia.
- **Bloqueo opcional**: Los hilos pueden esperar indefinidamente o con timeout.
- **Gestión automática de memoria**: Zephyr maneja internamente la sincronización.

## Funcionamiento del Código

### Estructura de Datos

```c
struct data_item_t {
    void* queue_reserved;   // Reservado para uso interno de la cola
    int value;              // Dato que se transmite
};
```

- `queue_reserved`: Campo obligatorio para el funcionamiento interno de Zephyr.
- `value`: Contiene el dato útil que se intercambia entre hilos.

### Hilo Productor (`threadProducer`)

```c
void threadProducer(void *p1, void *p2, void *p3)
{
    struct data_item_t txData;
    
    for (;;) {
        txData.value = k_uptime_get_32();  // Obtiene el tiempo actual
        k_queue_append(&queueMessage, &txData);  // Envía a la cola
        k_msleep(1000);  // Espera 1 segundo
    }
}
```

**Funciones:**
- Genera un nuevo dato cada segundo usando `k_uptime_get_32()` (tiempo en ms desde el inicio)
- Envía el dato a la cola usando `k_queue_append()`
- Se suspende 1 segundo con `k_msleep(1000)`

### Hilo Consumidor (`threadConsumer`)

```c
void threadConsumer(void *p1, void *p2, void *p3)
{
    for (;;) {
        struct data_item_t *rxData = k_queue_get(&queueMessage, K_FOREVER);
        
        if (rxData != NULL)
            printk("[CONSUMER] Dato recibido: %d\n", rxData->value);
    }
}
```

**Funciones:**
- Espera indefinidamente (`K_FOREVER`) hasta recibir un mensaje de la cola
- Procesa el dato recibido e imprime su valor
- Vuelve a esperar el siguiente mensaje

## Arquitectura del Sistema

```
[Thread Producer]  ──────────────►  [Queue]  ──────────────►  [Thread Consumer]
     (Genera datos cada 1s)                      (Procesa datos al recibirlos)
                                                        │
                                                        ▼
                                                   [UART Output]
```

### Flujo de Ejecución:

1. **Inicio**: Ambos hilos se crean automáticamente al arrancar
2. **Productor**: Genera datos basados en el tiempo del sistema
3. **Cola**: Almacena los mensajes de forma FIFO y sincroniza los hilos
4. **Consumidor**: Se bloquea esperando mensajes y los procesa al recibirlos
5. **Salida**: Los resultados se muestran por UART/consola

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
cmake --build debug --target clean
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
[THREAD PRODUCER] Creada
[THREAD CONSUMER] Creada
[THREAD PRODUCER] Dato enviado: 1045
[THREAD CONSUMER] Dato recibido: 1045
[THREAD PRODUCER] Dato enviado: 2046
[THREAD CONSUMER] Dato recibido: 2046
[THREAD PRODUCER] Dato enviado: 3047
[THREAD CONSUMER] Dato recibido: 3047
...
```

### Interpretación:
- Los números representan el tiempo transcurrido en milisegundos
- Se puede observar la sincronización entre productor y consumidor
- Los mensajes aparecen cada segundo aproximadamente

## Conceptos Clave de Zephyr

### 1. Definición Estática de Colas
```c
K_QUEUE_DEFINE(queueMessage);
```
- Crea la cola en tiempo de compilación
- No requiere inicialización manual
- Gestión automática de memoria

### 2. Definición Estática de Hilos
```c
K_THREAD_DEFINE(producerId, STACK_SIZE, threadProducer, NULL, NULL, NULL,
                PRIORITY, 0, 0);
```
- `STACK_SIZE`: Tamaño del stack (512 bytes)
- `PRIORITY`: Prioridad del hilo (5)
- Los hilos se inician automáticamente

### 3. Funciones de Cola
- `k_queue_append()`: Añade elemento al final de la cola
- `k_queue_get()`: Obtiene elemento del frente de la cola
- `K_FOREVER`: Constante para espera indefinida

### 4. Funciones de Tiempo
- `k_uptime_get_32()`: Tiempo en ms desde el arranque
- `k_msleep()`: Suspende el hilo por X milisegundos

## Modificaciones Posibles

### 1. Cambiar la Frecuencia de Envío
```c
k_msleep(500);  // Envía cada 500ms en lugar de 1000ms
```

### 2. Añadir Más Productores
```c
K_THREAD_DEFINE(producer2Id, STACK_SIZE, threadProducer2, NULL, NULL, NULL,
                PRIORITY, 0, 0);
```

### 3. Implementar Timeout en el Consumidor
```c
struct data_item_t *rxData = k_queue_get(&queueMessage, K_MSEC(2000));
if (rxData == NULL) {
    printk("[CONSUMER] Timeout - No se recibió dato\n");
}
```

### 4. Añadir Más Datos a la Estructura
```c
struct data_item_t {
    void* queue_reserved;
    int value;
    int timestamp;
    char message[32];
};
```

### 5. Implementar Cola con Límite
```c
#define QUEUE_SIZE 10
K_MSGQ_DEFINE(msgQueue, sizeof(struct data_item_t), QUEUE_SIZE, 4);
```

## Depuración y Troubleshooting

### Problemas Comunes:

1. **"Permission denied" en Kconfig**:
   - Eliminar carpeta `Kconfig/` si existe en la raíz
   - Ejecutar `cmake --preset debug` de nuevo

2. **Error de compilación**:
   - Verificar que Zephyr SDK esté correctamente instalado
   - Comprobar variables de entorno `ZEPHYR_BASE`

3. **No aparece salida por consola**:
   - Verificar `CONFIG_PRINTK=y` en `prj.conf`
   - Comprobar conexión serie y baudrate (115200)

---

**Autor**: Zuliani, Agustín  
**Proyecto**: Zephyr SEA2 - Ejemplos FRDM-MCXC444  
**Fecha**: 2025