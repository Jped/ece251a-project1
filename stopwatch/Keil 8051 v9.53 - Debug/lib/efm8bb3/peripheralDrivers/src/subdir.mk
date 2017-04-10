################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/efm8bb3/peripheralDrivers/src/pwr.c \
../lib/efm8bb3/peripheralDrivers/src/spi_0.c 

OBJS += \
./lib/efm8bb3/peripheralDrivers/src/pwr.OBJ \
./lib/efm8bb3/peripheralDrivers/src/spi_0.OBJ 


# Each subdirectory must supply rules for building sources it contributes
lib/efm8bb3/peripheralDrivers/src/%.OBJ: ../lib/efm8bb3/peripheralDrivers/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Keil 8051 Compiler'
	wine "/home/daniel/Downloads/SimplicityStudio_v4/developer/toolchains/keil_8051/9.53/BIN/C51" "@$(patsubst %.OBJ,%.__i,$@)" || $(RC)
	@echo 'Finished building: $<'
	@echo ' '

lib/efm8bb3/peripheralDrivers/src/pwr.OBJ: /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/peripheral_driver/inc/pwr.h /home/daniel/SimplicityStudio/v4_workspace/EFM8BB3_PowerModes_2/inc/config/efm8_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h

lib/efm8bb3/peripheralDrivers/src/spi_0.OBJ: /home/daniel/SimplicityStudio/v4_workspace/EFM8BB3_PowerModes_2/inc/config/efm8_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/SimplicityStudio/v4_workspace/EFM8BB3_PowerModes_2/lib/efm8bb3/peripheralDrivers/src/spi_0.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h


