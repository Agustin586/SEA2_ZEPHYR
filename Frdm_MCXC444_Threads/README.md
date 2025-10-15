# FRDM-MCXC444 Threads - Programación Multihilo en Zephyr RTOS

Este ejemplo demuestra el uso de **hilos (threads)** en Zephyr RTOS utilizando la placa **FRDM-MCXC444**. Se implementan dos tipos de hilos diferentes para mostrar las distintas formas de crear y gestionar tareas concurrentes en sistemas embebidos.

---

## 📚 **Teoría: ¿Qué son los Hilos?**

### **Concepto Básico**
Un **hilo (thread)** es una unidad básica de ejecución dentro de un programa. En sistemas embebidos, los hilos permiten que múltiples tareas se ejecuten de manera **aparentemente simultánea**, aunque en realidad el procesador alterna rápidamente entre ellas.

### **Analogía Simple**
Imagina que eres un chef en una cocina:
- **Sin hilos**: Tienes que terminar completamente un plato antes de empezar el siguiente
- **Con hilos**: Puedes alternar entre múltiples platos, cocinando pasta mientras se hornea el pollo

```
SIN HILOS (Secuencial):
Tarea A ████████████ → Tarea B ████████████ → Tarea C ████████████

CON HILOS (Concurrente):
Tarea A ███  ███  ███  ███
Tarea B   ███  ███  ███  ███
Tarea C     ███  ███  ███  ███
         ↑ El scheduler alterna entre tareas
```

### **Ventajas de usar Hilos**
1. **Responsividad**: El sistema puede responder a eventos mientras ejecuta otras tareas
2. **Modularidad**: Cada tarea se programa de forma independiente
3. **Eficiencia**: Mejor uso del tiempo del procesador
4. **Escalabilidad**: Fácil agregar nuevas funcionalidades

### **Conceptos Clave**

#### **Stack (Pila)**
Cada hilo tiene su propia pila de memoria donde almacena:
- Variables locales
- Parámetros de funciones
- Direcciones de retorno

#### **Prioridad**
En Zephyr, las prioridades van de 0 (máxima) a 31 (mínima):
```
Prioridad 0  ← MÁS ALTA    (Interrupciones críticas)
Prioridad 1                (Drivers de tiempo real)
Prioridad 2                (Tareas críticas del sistema)
Prioridad 3  ← Hilo LED    (Tareas importantes de aplicación)
Prioridad 4  ← Hilo Msg    (Tareas normales de aplicación)
...
Prioridad 31 ← MÁS BAJA    (Tareas de background)
```

#### **Estados de un Hilo**
```
┌─────────────┐    start()    ┌─────────────┐
│   READY     │ ─────────────►│   RUNNING   │
│ (Listo)     │               │(Ejecutando) │
└─────────────┘               └─────────────┘
       ▲                             │
       │                             │ sleep() / wait()
       │ wakeup()                    ▼
┌─────────────┐               ┌─────────────┐
│  SUSPENDED  │               │   WAITING   │
│(Suspendido) │               │(Esperando)  │
└─────────────┘               └─────────────┘
```

---

## 🏗️ **Tipos de Hilos en Zephyr**

### **1. Hilo Estático**
Se define en **tiempo de compilación** usando `K_THREAD_DEFINE`.

**Características:**
- ✅ Creación automática al inicio del sistema
- ✅ Gestión automática de memoria
- ✅ Más eficiente en recursos
- ✅ Ideal para tareas que siempre deben existir

**Sintaxis:**
```c
K_THREAD_DEFINE(nombre_id, stack_size, funcion_hilo, 
                param1, param2, param3, prioridad, opciones, delay);
```

### **2. Hilo Dinámico**
Se crea en **tiempo de ejecución** usando `k_thread_create()`.

**Características:**
- ✅ Control total sobre cuándo se crea
- ✅ Parámetros configurables en runtime
- ✅ Posibilidad de destruir y recrear
- ✅ Ideal para tareas condicionales

**Pasos para crear:**
1. Definir stack: `K_THREAD_STACK_DEFINE()`
2. Definir estructura: `struct k_thread`
3. Crear hilo: `k_thread_create()`

---

## 💻 **Análisis del Código**

### **Configuración Inicial**
```c
#include <stdio.h>
#include <zephyr/kernel.h>
#include <zephyr/drivers/gpio.h>

#define STACK_SIZE 512                    // Tamaño de pila: 512 bytes
#define PRIORIDAD_HILO_ESTATICO 3        // Prioridad alta (números bajos = mayor prioridad)
#define PRIORIDAD_HILO_DINAMICO 4        // Prioridad normal
#define SLEEP_TIME_MS 1000               // Intervalo de parpadeo del LED
#define LED0_NODE DT_ALIAS(led0)         // Referencia al LED en Device Tree

// Configuración del LED usando Device Tree
static const struct gpio_dt_spec led = GPIO_DT_SPEC_GET(LED0_NODE, gpios);
```

### **Hilo Estático: Control del LED**
```c
// DEFINICIÓN: Esto crea el hilo automáticamente al iniciar
K_THREAD_DEFINE(hilo_estatico_id,           // ID único del hilo
                STACK_SIZE,                 // 512 bytes de stack
                hilo_estatico,              // Función que ejecuta
                NULL, NULL, NULL,           // Parámetros (no usados)
                PRIORIDAD_HILO_ESTATICO,    // Prioridad 3 (alta)
                0,                          // Opciones (ninguna)
                0);                         // Delay de inicio (inmediato)

// IMPLEMENTACIÓN: Qué hace el hilo
void hilo_estatico(void *p1, void *p2, void *p3) {
    // 1. Verificar que el LED esté disponible
    if (!gpio_is_ready_dt(&led)) {
        while (1);  // Error: LED no disponible - bucle infinito
    }

    // 2. Configurar LED como salida
    int ret = gpio_pin_configure_dt(&led, GPIO_OUTPUT_ACTIVE);
    if (ret < 0) {
        while(1);   // Error: No se pudo configurar - bucle infinito
    }

    // 3. Bucle principal: parpadear LED
    while (1) {
        ret = gpio_pin_toggle_dt(&led);  // Cambiar estado del LED (ON↔OFF)
        
        if (ret < 0) {
            while (1);  // Error: No se pudo cambiar estado
        }
        
        k_msleep(SLEEP_TIME_MS);  // Esperar 1000ms antes del siguiente cambio
    }
}
```

### **Hilo Dinámico: Mensajes en Consola**
```c
// PREPARACIÓN: Definir stack y estructura de control
K_THREAD_STACK_DEFINE(hilo_dinamico_stack, STACK_SIZE);  // Stack de 512 bytes
struct k_thread hilo_dinamico_data;                      // Estructura de control

// IMPLEMENTACIÓN: Qué hace el hilo
void hilo_dinamico(void *p1, void *p2, void *p3) {
    while (1) {
        printk("Hilo dinamico ejecutando...\n");  // Imprimir mensaje
        k_sleep(K_MSEC(500));                     // Esperar 500ms
    }
}

// CREACIÓN: En la función main()
int main() {
    printk("Sistema iniciado: creando hilo dinamico.\n");
    
    // Crear el hilo dinámico
    k_thread_create(&hilo_dinamico_data,           // Estructura de control
                    hilo_dinamico_stack,           // Stack asignado
                    K_THREAD_STACK_SIZEOF(hilo_dinamico_stack), // Tamaño del stack
                    hilo_dinamico,                 // Función a ejecutar
                    NULL, NULL, NULL,              // Parámetros
                    PRIORIDAD_HILO_DINAMICO,       // Prioridad 4 (normal)
                    0,                             // Opciones
                    K_NO_WAIT);                    // Iniciar inmediatamente
    
    return 0;  // main() termina, pero los hilos siguen ejecutándose
}
```

---

## ⚡ **Flujo de Ejecución**

### **Timeline de Eventos:**
```
Tiempo    │ Sistema        │ Hilo Estático   │ Hilo Dinámico
─────────┼───────────────┼─────────────────┼──────────────────
0ms      │ Boot Zephyr   │ LED ON          │ "Sistema iniciado..."
500ms    │               │ LED ON          │ "Hilo dinamico ejecutando..."
1000ms   │               │ LED OFF         │ "Hilo dinamico ejecutando..."
1500ms   │               │ LED OFF         │ "Hilo dinamico ejecutando..."
2000ms   │               │ LED ON          │ "Hilo dinamico ejecutando..."
2500ms   │               │ LED ON          │ "Hilo dinamico ejecutando..."
3000ms   │               │ LED OFF         │ "Hilo dinamico ejecutando..."
...      │               │ ...             │ ...
```

### **Esquema Visual:**
```
                    ┌─ Scheduler de Zephyr ─┐
                    │                       │
              ┌─────▼─────┐           ┌─────▼─────┐
              │Hilo LED   │           │Hilo MSG   │
              │(Prio: 3)  │           │(Prio: 4)  │
              │           │           │           │
              │• gpio_pin_│           │• printk() │
              │  toggle() │           │• k_sleep()│
              │• k_msleep()│           │           │
              └─────┬─────┘           └─────┬─────┘
                    │                       │
                    ▼                       ▼
              ┌───────────┐           ┌─────────────┐
              │LED Físico │           │Consola UART │
              │ON ↔ OFF   │           │Mensajes...  │
              └───────────┘           └─────────────┘
```

---

## 📊 **Gestión de Prioridades**

### **¿Cómo decide Zephyr qué hilo ejecutar?**

1. **Prioridad más alta**: Siempre gana
2. **Misma prioridad**: Round-robin (por turnos)
3. **Preemptivo**: Un hilo de mayor prioridad interrumpe a uno de menor prioridad

### **Ejemplo Práctico:**
```c
// Si ambos hilos están listos para ejecutar:
Hilo Estático  (Prioridad 3) ← EJECUTA PRIMERO
Hilo Dinámico  (Prioridad 4) ← Espera su turno

// Cuando el hilo estático hace k_msleep():
Hilo Estático  (Prioridad 3) ← DURMIENDO
Hilo Dinámico  (Prioridad 4) ← AHORA PUEDE EJECUTAR
```

---

## 🖥️ **Salida Esperada del Programa**

### **Consola UART (115200 baud):**
```
Sistema iniciado: creando hilo dinamico.
Hilo dinamico ejecutando...
Hilo dinamico ejecutando...
Hilo dinamico ejecutando...
Hilo dinamico ejecutando...
Hilo dinamico ejecutando...
...
(Se repite cada 500ms indefinidamente)
```

### **LED Visual:**
```
Tiempo: 0s    1s    2s    3s    4s    5s
LED:    ON -> OFF-> ON -> OFF-> ON -> OFF...
        │     │     │     │     │     │
        └─────┴─────┴─────┴─────┴─────┴── Cada 1 segundo
```

### **Observaciones:**
- **Mensaje en consola**: Aparece cada 500ms
- **Parpadeo del LED**: Cambia cada 1000ms
- **Ambos continúan indefinidamente**: Los hilos son concurrentes

---

## 🔧 **Configuración del Proyecto**

### **Archivo `prj.conf`:**
```ini
# GPIO para control del LED
CONFIG_GPIO=y

# Consola serie para debug
CONFIG_CONSOLE=y
CONFIG_UART_CONSOLE=y
CONFIG_SERIAL=y
CONFIG_PRINTK=y

# Multithreading (habilitado por defecto en Zephyr)
CONFIG_MULTITHREADING=y

# Tamaños de stack
CONFIG_MAIN_STACK_SIZE=2048
CONFIG_SYSTEM_WORKQUEUE_STACK_SIZE=2048
```

### **Device Tree (para el LED):**
El LED se configura automáticamente a través del Device Tree del board `frdm_mcxc444`. No se requiere overlay adicional para este ejemplo.

---

## 🧪 **Experimentos para Entender Mejor**

### **Experimento 1: Cambiar Prioridades**
```c
// Cambiar estas líneas:
#define PRIORIDAD_HILO_ESTATICO 4    // Era 3
#define PRIORIDAD_HILO_DINAMICO 3    // Era 4

// Resultado: El hilo dinámico tendrá mayor prioridad
```

### **Experimento 2: Cambiar Intervalos**
```c
// En hilo_estatico():
k_msleep(500);  // LED más rápido

// En hilo_dinamico():
k_sleep(K_MSEC(2000));  // Mensajes más lentos
```

### **Experimento 3: Agregar Más Hilos**
```c
// Agregar un tercer hilo
void hilo_contador(void *p1, void *p2, void *p3) {
    int contador = 0;
    while (1) {
        printk("Contador: %d\n", contador++);
        k_sleep(K_MSEC(1500));
    }
}

K_THREAD_DEFINE(hilo_contador_id, STACK_SIZE, hilo_contador,
                NULL, NULL, NULL, 5, 0, 0);
```

---

## 📚 **APIs de Zephyr Utilizadas**

### **Thread Management:**
- `K_THREAD_DEFINE()` - Define hilo estático
- `K_THREAD_STACK_DEFINE()` - Define stack para hilo dinámico
- `k_thread_create()` - Crea hilo dinámico
- `k_msleep()` / `k_sleep()` - Suspende hilo por tiempo

### **GPIO (LED):**
- `GPIO_DT_SPEC_GET()` - Obtiene especificación GPIO del Device Tree
- `gpio_is_ready_dt()` - Verifica si GPIO está listo
- `gpio_pin_configure_dt()` - Configura pin como entrada/salida
- `gpio_pin_toggle_dt()` - Cambia estado del pin (ON↔OFF)

### **Console/Debug:**
- `printk()` - Imprime texto en consola (similar a printf)

---

## 🔍 **Debugging y Troubleshooting**

### **Problemas Comunes:**

1. **LED no parpadea:**
   ```
   Causa: Device Tree mal configurado o LED no conectado
   Solución: Verificar que led0 esté definido en el DT del board
   ```

2. **No aparecen mensajes en consola:**
   ```
   Causa: UART no configurado o baudrate incorrecto
   Solución: Verificar CONFIG_UART_CONSOLE=y y conexión serie
   ```

3. **Sistema se cuelga:**
   ```
   Causa: Stack overflow o bucle infinito en manejo de errores
   Solución: Aumentar STACK_SIZE o revisar manejo de errores
   ```

### **Herramientas de Debug:**
```ini
# Agregar en prj.conf para más información:
CONFIG_THREAD_ANALYZER=y        # Análisis de uso de hilos
CONFIG_THREAD_STACK_INFO=y      # Información de stack
CONFIG_DEBUG=y                  # Debug general
CONFIG_LOG=y                    # Sistema de logging
```

---

## 🚀 **Compilación y Ejecución**

### **1. Compilar:**
```bash
cd Frdm_MCXC444_Threads
west build -b frdm_mcxc444
```

### **2. Flashear:**
```bash
west flash
```

### **3. Monitorear:**
```bash
# Abrir terminal serie en 115200 baud
minicom -D /dev/ttyACM0 -b 115200
# O en Windows: usar PuTTY o similar
```

---

## 🎯 **Próximos Pasos**

Para expandir tu conocimiento sobre hilos:

### **Nivel Intermedio:**
1. **Sincronización**: Semáforos, Mutex, Message Queues
2. **Comunicación**: Inter-Thread Communication (ITC)
3. **Timers**: Combinar hilos con timers por software

### **Nivel Avanzado:**
1. **Scheduling**: Configuración de políticas de scheduling
2. **SMP**: Symmetric Multi-Processing (múltiples cores)
3. **Real-time**: Garantías de tiempo real

### **Proyectos Sugeridos:**
1. **Sistema de monitoreo**: Sensores + Display + Comunicación
2. **Control de motores**: PWM + Encoders + Control PID
3. **IoT Device**: WiFi + Sensores + Cloud + UI

---

## 📖 **Referencias y Documentación**

### **Zephyr Documentation:**
- [Threading Guide](https://docs.zephyrproject.org/latest/kernel/services/threads/index.html)
- [Scheduling](https://docs.zephyrproject.org/latest/kernel/services/scheduling/index.html)
- [GPIO API](https://docs.zephyrproject.org/latest/hardware/peripherals/gpio.html)

### **FRDM-MCXC444 Resources:**
- [Board Documentation](https://docs.zephyrproject.org/latest/boards/nxp/frdm_mcxc444/doc/index.html)
- [MCX C444 Reference Manual](https://www.nxp.com/docs/en/reference-manual/MCXC444RM.pdf)

---

**Autor:** Zuliani, Agustín  
**Proyecto:** Zephyr SEA2 - Ejemplos FRDM-MCXC444  
**Fecha:** 2025
