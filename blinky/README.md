# Hilos (Threads)
En este ejemplo se describe como crear a través de los servicios del kernel dos hilos.

## Introducción
Un hilo es un objeto del kernel que es utilizado para procesar aplicaciones que son largas o demasiado complejas para correr en una rutina de interrupción ISR. Se puede definir cualquier cantidad de hilos (únicamente limitados por la RAM). Cada hilo se identifica con un id (thread_id).

Un hilo tiene las siguientes propiedades clave:
- *Area de Stack*
- *Bloque de control del hilo*
- *Entry point function*
- *Prioridad*
- *Thread options*: podria no estar esto confunde
- *Start delay*
- *Modo de ejecución*

# Referencias
- [Zephyr-Threads](https://docs.zephyrproject.org/latest/kernel/services/threads/index.html)
