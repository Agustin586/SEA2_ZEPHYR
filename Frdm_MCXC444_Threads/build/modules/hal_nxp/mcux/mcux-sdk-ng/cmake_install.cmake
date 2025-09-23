# Install script for directory: D:/aguat/Documents/zephyr/zephyr_main/zephyr/modules/hal_nxp/mcux/mcux-sdk-ng

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Zephyr-Kernel")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Users/aguat/zephyr-sdk-0.17.0/arm-zephyr-eabi/bin/arm-zephyr-eabi-objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/usb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/osa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/wifi_bt_module/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/conn_fwloader/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/lists/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/rpmsg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/imu_adapter/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/acmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/acmp_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/adc12/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/adc16/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/adc_12b1msps_sar/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/adc_5hc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/adc_5v12b_ll18_015/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/adc_etc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/aes/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/afe/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/aipstz/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/anactrl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/aoi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/asmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/asrc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/bbnsm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/bee/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/caam/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/camera_csr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/capt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/casper/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cau3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ccm32k/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cdog/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ce/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ci_pi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cic_irb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cmp_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cmt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cns_acomp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cns_adc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cns_dac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/common/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cop/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/crc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/csi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ctimer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dac12/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dac14/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dac32/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dac_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dcdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dcdc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dcic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dcp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dma3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dmamux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dmic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dpr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dpu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dpu_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dpu_irqsteer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dryice/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_adc16/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_aoi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_cadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_cmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_cop/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_crc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_crc16/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_dac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_dma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_dmamux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_edma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_eqdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_evtg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_ewm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_flexcan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_gpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_lpi2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_mcm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_mscan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_opamp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_opamp_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_pdb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_pit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_pmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_pwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_qdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_qtmr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_sim/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_xbara/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dsc_xbarb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/dspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/easrc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ecspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/edma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/edma4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/edma_rev2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/eeprom/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/eim/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/elcdif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/elemu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/emc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/enc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/enet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/enet_qos/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/epdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/epit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/eqdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/erm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/esai/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/evtg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ewm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flash_ftmr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flash_k4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flash_k4_iap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flashiap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexbus/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexcan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexcomm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexram/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexspi_flr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/fmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/fmeas/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/fract_pll/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ftm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/gdet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/gdma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/gint/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/glikey/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/gpc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/gpc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/gpc_2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/gpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/gpio_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/gpt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/hashcrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/hsadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/hscmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/i3c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/iap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/iap1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/iap3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/iee/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/iee_apc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ieer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/igpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ii2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/imu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/inputmux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/intc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/intm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/intmux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/iped/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ipwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/irq/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/irqsteer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/irqsteer_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/irtc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/isi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/itrc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/itrc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/iuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/jn_cmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/jn_flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/jn_iocon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/jn_pwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/jn_rng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/jpegdec/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/kbi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/key_manager/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/kpp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lcdic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lcdif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lcdifv2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lcdifv3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ldb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ldb_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ldb_combo_phy/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lin/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/llwu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lmem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_acomp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_adc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_crc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_dac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_dma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_enet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_freqme/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_gpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_gpio_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_i2c_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_iocon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_iocon_lite/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_iopctl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_lcdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_minispi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_miniusart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_rit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_rtc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_rtc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_spi_ssp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_vspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpc_vusart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpcmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpflexcomm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpi2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpsci/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lptmr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ltc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mailbox/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mau/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mcan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mcm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mcx_cmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mcx_enet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mcx_spc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mcx_vbat/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mecc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mipi_csi2rx/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mipi_csi2rx_dwc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mipi_dsi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mipi_dsi_imx/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mipi_dsi_split/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mmau/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mmdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mmdvsq/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mmu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mpu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mrt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mscan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mscm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/msgintr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/msmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mu1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/mx25/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/netc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/nfc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ocotp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/opamp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/opamp_fast/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ostimer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/otfad/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/otp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pdb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pdm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pint/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pit/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/plu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pmc0/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pmu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pngdec/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/port/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/powerquad/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/prg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/prince/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/puf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/puf_v3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pwt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pwt_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pxp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qn_acmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qn_adc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qn_bod/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qn_dac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qn_flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qn_fsp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qn_gpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qn_inputmux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qn_iocon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qn_rng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qn_rtc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qn_syscon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qn_wdt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qsci/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qtmr_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/qtmr_2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/queued_spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/rcm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/rdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/rdc_sema42/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/rgpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/rng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/rng_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/rnga/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/rtc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/rtc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/rtd_cmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/rtwdog/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/s3mu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sai/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sar_adc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sctimer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sdadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sdhc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sdif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sdma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sdramc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sdu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sema4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sema42/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/semc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sfa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sha/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sim/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sinc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/slcd/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/smartcard/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/smartdma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/smc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/smscm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/snvs_hp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/snvs_lp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/software_i2s/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/spc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/spdif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/spifi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/spm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/ssarc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/swm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/syscon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sysctl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sysctr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/sysmpu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/syspm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tdet/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tempmon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tempsensor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tempsensor_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tmu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tmu_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tmu_2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tmu_3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tpm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/trdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/trdc_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/trgmux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/trng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tsc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tsens/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tstmr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/uart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/usdhc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/utick/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/vbat/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/vref/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/vref_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/waketimer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/wdog/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/wdog01/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/wdog32/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/wdog8/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/wdt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/wkt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/wuu/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/wwdt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/xbar/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/xbar_1/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/xbara/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/xbarb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/xecc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/xrdc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/xrdc2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/xspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cache/armv7-m7/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cache/cache64/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cache/lmem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cache/lpcac/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cache/lpcac_n4a_mcxn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cache/lplmem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/cache/xcache/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexcomm/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexcomm/i2s/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexcomm/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexcomm/usart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexio/camera/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexio/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexio/i2s/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexio/mculcd/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexio/qspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexio/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexio/uart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/flexspi/flexspi_dma3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpflexcomm/lpi2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpflexcomm/lpspi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/lpflexcomm/lpuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pn76/crc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pn76/crc_wrapper/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pn76/gpadc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pn76/gpdma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pn76/gpt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pn76/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pn76/lpuart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pn76/pn_wrapper/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pn76/rng/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pn76/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pn76/wdt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tsi/tsi_v2/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tsi/tsi_v4/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tsi/tsi_v5/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/tsi/tsi_v6/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pn76/hostif/pnev7642fama/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/drivers/pn76/hostif/pnev76fama/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/devices/MCX/MCXC/MCXC444/cmake_install.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/aguat/Documents/GitHub/Zephyr-SEA2/Frdm_MCXC444_Threads/build/modules/hal_nxp/mcux/mcux-sdk-ng/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
