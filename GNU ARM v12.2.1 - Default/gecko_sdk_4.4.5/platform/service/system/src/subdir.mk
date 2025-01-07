################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk/platform/service/system/src/sl_system_init.c \
C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk/platform/service/system/src/sl_system_process_action.c 

OBJS += \
./gecko_sdk_4.4.5/platform/service/system/src/sl_system_init.o \
./gecko_sdk_4.4.5/platform/service/system/src/sl_system_process_action.o 

C_DEPS += \
./gecko_sdk_4.4.5/platform/service/system/src/sl_system_init.d \
./gecko_sdk_4.4.5/platform/service/system/src/sl_system_process_action.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.5/platform/service/system/src/sl_system_init.o: C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk/platform/service/system/src/sl_system_init.c gecko_sdk_4.4.5/platform/service/system/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DTF_LITE_STATIC_MEMORY=1' '-DEFR32MG24B310F1536IM48=1' '-DSL_APP_PROPERTIES=1' '-DBOOTLOADER_APPLOADER=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2601B"' '-DSL_BOARD_REV="A01"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DSLI_RADIOAES_REQUIRES_MASKING=1' '-DTF_LITE_MCU_DEBUG_LOG=1' '-DCMSIS_NN=1' -I"F:\SS5projects\ble_magic_wand\autogen" -I"F:\SS5projects\ble_magic_wand\config" -I"F:\SS5projects\ble_magic_wand\config\btconf" -I"F:\SS5projects\ble_magic_wand\config\tflite" -I"F:\SS5projects\ble_magic_wand" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_assert" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_timer" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//protocol/bluetooth/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//protocol/bluetooth/bgcommon/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//protocol/bluetooth/bgstack/ll/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/cmsis/nn" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/cmsis/nn/Include" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/compute/util/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/driver/debug/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/compute/driver/mvp/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/gatt_service_battery" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/gatt_service_device_information" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/service/hfxo_manager/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/icm20689/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/imu/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/in_place_ota_dfu" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/driver/leddrv/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/compute/math/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/compute/math/mvp/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/include" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/library" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/compute/nn/mvp/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/compute/nn/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/nvm3/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/peripheral/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/service/power_manager/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_psa_driver/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/common" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ble" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ieee802154" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/wmbus" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/zwave" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/sidewalk" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_built_in_phys/efr32xg24" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions/efr32xg24" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_power_manager_init" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/se_manager/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/se_manager/src" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_protocol_crypto/src" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/tensorflow_extra/flatbuffers/include" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/tensorflow_extra/gemmlowp" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/tensorflow_extra/ruy" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/tensorflow_extra/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/tflite-micro" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -Wno-unused-parameter -Wno-missing-field-initializers -mcmse -mfp16-format=ieee --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.5/platform/service/system/src/sl_system_init.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.4.5/platform/service/system/src/sl_system_process_action.o: C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk/platform/service/system/src/sl_system_process_action.c gecko_sdk_4.4.5/platform/service/system/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DTF_LITE_STATIC_MEMORY=1' '-DEFR32MG24B310F1536IM48=1' '-DSL_APP_PROPERTIES=1' '-DBOOTLOADER_APPLOADER=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=39000000' '-DSL_BOARD_NAME="BRD2601B"' '-DSL_BOARD_REV="A01"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DSLI_RADIOAES_REQUIRES_MASKING=1' '-DTF_LITE_MCU_DEBUG_LOG=1' '-DCMSIS_NN=1' -I"F:\SS5projects\ble_magic_wand\autogen" -I"F:\SS5projects\ble_magic_wand\config" -I"F:\SS5projects\ble_magic_wand\config\btconf" -I"F:\SS5projects\ble_magic_wand\config\tflite" -I"F:\SS5projects\ble_magic_wand" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_assert" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_log" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//app/common/util/app_timer" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//protocol/bluetooth/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//protocol/bluetooth/bgcommon/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//protocol/bluetooth/bgstack/ll/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/driver/button/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/cmsis/nn" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/cmsis/nn/Include" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/compute/util/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/driver/debug/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/compute/driver/mvp/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/gatt_service_battery" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/gatt_service_device_information" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/gpiointerrupt/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/service/hfxo_manager/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/icm20689/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/imu/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//app/bluetooth/common/in_place_ota_dfu" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/driver/leddrv/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/compute/math/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/compute/math/mvp/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/include" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/library" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/compute/nn/mvp/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/compute/nn/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/nvm3/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/peripheral/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/service/power_manager/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_psa_driver/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/common" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ble" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ieee802154" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/wmbus" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/zwave" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/sidewalk" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_built_in_phys/efr32xg24" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions/efr32xg24" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_power_manager_init" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/se_manager/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/se_manager/src" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_protocol_crypto/src" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/tensorflow_extra/flatbuffers/include" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/tensorflow_extra/gemmlowp" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/tensorflow_extra/ruy" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/tensorflow_extra/inc" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//util/third_party/tflite-micro" -I"C:/Users/ijnak/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -Wno-unused-parameter -Wno-missing-field-initializers -mcmse -mfp16-format=ieee --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.5/platform/service/system/src/sl_system_process_action.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


