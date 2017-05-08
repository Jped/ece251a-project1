################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/efm8bb3/bsp/efm8_memory_lcd/src/source/spi.c \
../lib/efm8bb3/bsp/efm8_memory_lcd/src/source/tick.c 

OBJS += \
./lib/efm8bb3/bsp/efm8_memory_lcd/src/source/spi.OBJ \
./lib/efm8bb3/bsp/efm8_memory_lcd/src/source/tick.OBJ 


# Each subdirectory must supply rules for building sources it contributes
lib/efm8bb3/bsp/efm8_memory_lcd/src/source/%.OBJ: ../lib/efm8bb3/bsp/efm8_memory_lcd/src/source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Keil 8051 Compiler'
	wine "/home/daniel/Downloads/SimplicityStudio_v4/developer/toolchains/keil_8051/9.53/BIN/C51" "@$(patsubst %.OBJ,%.__i,$@)" || $(RC)
	@echo 'Finished building: $<'
	@echo ' '

lib/efm8bb3/bsp/efm8_memory_lcd/src/source/spi.OBJ: /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/bsp.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_memory_lcd/inc/spi.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.4/Device/EFM8BB3/peripheral_driver/inc/spi_0.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.4/kits/EFM8BB3_SLSTK2022A/config/bsp_config.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_memory_lcd/inc/config/spi_config.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/inc/efm8_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_memory_lcd/inc/disp.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h

lib/efm8bb3/bsp/efm8_memory_lcd/src/source/tick.OBJ: /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/bsp.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_memory_lcd/inc/tick.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.4/kits/EFM8BB3_SLSTK2022A/config/bsp_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h


