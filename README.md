# 🚀 Zephyr RTOS - Ejemplos para FRDM-MCXC444

[![Zephyr](https://img.shields.io/badge/Zephyr-RTOS-blue?logo=zephyr&logoColor=white)](https://zephyrproject.org/)
[![NXP](https://img.shields.io/badge/NXP-MCXC444-orange?logo=nxp&logoColor=white)](https://www.nxp.com/)
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](LICENSE)

## 📖 Descripción

Este repositorio contiene **ejemplos prácticos y tutoriales** del Sistema Operativo en Tiempo Real **Zephyr RTOS**, especializados para la placa de desarrollo **FRDM-MCXC444** de NXP.

### 🎯 Objetivos del repositorio:
- ✅ Aprender los conceptos básicos de Zephyr RTOS
- ✅ Implementar ejemplos prácticos paso a paso  
- ✅ Dominar el desarrollo con VS Code + MCUXpresso IDE
- ✅ Explorar las capacidades del microcontrolador MCXC444

## 🛠️ Entorno de desarrollo

**Herramientas utilizadas:**
- 💻 **Editor:** Visual Studio Code
- 🔧 **Extensión:** MCUXpresso IDE Extension
- 🖥️ **OS:** Windows/Linux/macOS
- 📟 **Target:** FRDM-MCXC444 (NXP Kinetis MCX)

## 📁 Estructura del repositorio

```
Zephyr-SEA2/
├── 📂 blinky/                      # Ejemplo básico - LED parpadeante
│   ├── src/main.c
│   ├── CMakeLists.txt
│   └── prj.conf
│
├── 📂 Fdrm_MCXC444_Semaphore/      # Ejemplo de semáforos
│   ├── src/main.c
│   └── ...
│
├── 📂 Fdrm_MCXC444_TimerSoftware/  # ⭐ Software Timers (Simple)
│   ├── src/main.c                  # Hilo trabajando + Timer periódico
│   ├── CMakeLists.txt
│   └── README.rst
│
├── 📂 Frdm_MCXC444_Threads/        # Ejemplo de threads múltiples
│   ├── src/main.c
│   └── ...
│
├── 📄 .gitignore                   # Configurado para Zephyr + MCUXpresso
├── 📄 README.md                    # Este archivo
└── 📄 Zephyr_Workspace.code-workspace  # Workspace de VS Code
```

## 🚀 Proyectos incluidos

### 1. 💡 **Blinky** - Ejemplo básico
- **Qué hace:** LED parpadeante cada segundo
- **Conceptos:** GPIO, delays básicos
- **Nivel:** Principiante

### 2. 🧵 **Threads** - Múltiples hilos
- **Qué hace:** Varios threads ejecutándose en paralelo
- **Conceptos:** Multithreading, sincronización
- **Nivel:** Intermedio

### 3. 🔒 **Semáforos** - Sincronización
- **Qué hace:** Coordinación entre threads usando semáforos
- **Conceptos:** Semáforos, mutex, sincronización
- **Nivel:** Intermedio

### 4. ⏰ **Software Timers** - Timers por software
- **Qué hace:** Hilo trabajando + Timer periódico (ejemplo súper simple)
- **Conceptos:** `k_timer`, `k_thread`, callbacks
- **Nivel:** Intermedio
- **Destacado:** ⭐ Ejemplo limpio y minimalista

## 🏗️ Cómo usar este repositorio

### 1. **Requisitos previos**
```bash
# Instalar Zephyr SDK y dependencias
# Ver: https://docs.zephyrproject.org/latest/develop/getting_started/
```

### 2. **Clonar el repositorio**
```bash
git clone https://github.com/Agustin586/SEA2_ZEPHYR.git
cd SEA2_ZEPHYR
```

### 3. **Compilar un ejemplo**
```bash
# Ejemplo: compilar el proyecto de timers
cd Fdrm_MCXC444_TimerSoftware
west build -b frdm_mcxc444
west flash
```

### 4. **Ver la salida**
- Conectar cable USB (debugger)
- Abrir terminal serie (115200 baud)
- Reset de la placa

## 🔧 Configuración de VS Code

Este repositorio incluye configuración optimizada para VS Code:

- ✅ **IntelliSense** configurado para Zephyr
- ✅ **Tasks** predefinidos para build/flash
- ✅ **Launch configurations** para debugging
- ✅ **Extensiones** recomendadas

## 📚 Recursos adicionales

### Documentación oficial
- 📖 [Zephyr Project Documentation](https://docs.zephyrproject.org/latest/)
- 🏷️ [FRDM-MCXC444 Board Support](https://docs.zephyrproject.org/latest/boards/nxp/frdm_mcxc444/doc/index.html)
- 🔧 [Zephyr API Reference](https://docs.zephyrproject.org/latest/doxygen/html/index.html)

### Hardware
- 📋 [FRDM-MCXC444 User Guide](https://www.nxp.com/design/development-boards/freedom-development-boards/)
- 💾 [MCXC444 Reference Manual](https://www.nxp.com/docs/en/reference-manual/MCXC444RM.pdf)

### Tutoriales
- 🎥 **Video de instalación:** [Próximamente]
- 📝 **Getting Started:** Ver carpeta de cada proyecto

## 🤝 Contribuir

¡Las contribuciones son bienvenidas! 

1. Fork el proyecto
2. Crea una branch para tu feature (`git checkout -b feature/nueva-funcionalidad`)
3. Commit tus cambios (`git commit -m 'Agrega nueva funcionalidad'`)
4. Push a la branch (`git push origin feature/nueva-funcionalidad`)
5. Abre un Pull Request

## 📝 Notas importantes

⚠️ **Este repositorio está optimizado para:**
- FRDM-MCXC444 (puede requerir modificaciones para otras placas)
- Zephyr RTOS (versión actual del SDK)
- Entorno de desarrollo con VS Code

✅ **El `.gitignore` está configurado para:**
- Ignorar archivos de build automáticamente
- Mantener solo código fuente y configuración
- Evitar conflictos al clonar el repositorio

## 📄 Licencia

Este proyecto está bajo la Licencia Apache 2.0. Ver el archivo [LICENSE](LICENSE) para más detalles.

## 👨‍💻 Autor

**Agustín** - [@Agustin586](https://github.com/Agustin586)

---

*⭐ Si este repositorio te resulta útil, no olvides darle una estrella!*




