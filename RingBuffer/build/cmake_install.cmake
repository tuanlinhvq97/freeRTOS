# Install script for directory: /home/zeno/Documents/FGA/RingBuffer

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/zeno/Documents/FGA/RingBuffer/build/soc/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/log/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/heap/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/xtensa-debug-module/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/app_trace/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/freertos/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/vfs/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/newlib/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/esp_ringbuf/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/driver/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/esp_event/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/ethernet/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/lwip/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/tcpip_adapter/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/partition_table/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/app_update/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/spi_flash/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/mbedtls/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/micro-ecc/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/bootloader_support/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/nvs_flash/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/pthread/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/smartconfig_ack/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/wpa_supplicant/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/esp32/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/cxx/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/nghttp/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/esp-tls/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/tcp_transport/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/mqtt/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/openssl/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/expat/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/esp_http_client/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/protobuf-c/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/esp_adc_cal/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/spiffs/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/libsodium/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/idf_test/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/json/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/esptool_py/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/esp_http_server/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/coap/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/console/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/bt/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/protocomm/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/jsmn/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/wear_levelling/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/esp_https_ota/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/ulp/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/freemodbus/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/bootloader/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/wifi_provisioning/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/sdmmc/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/mdns/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/asio/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/aws_iot/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/fatfs/cmake_install.cmake")
  include("/home/zeno/Documents/FGA/RingBuffer/build/main/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/zeno/Documents/FGA/RingBuffer/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
