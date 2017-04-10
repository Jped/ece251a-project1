################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
A51_UPPER_SRCS += \
../src/SILABS_STARTUP.A51 

C_SRCS += \
../src/InitDevice.c \
../src/draw.c \
../src/main.c 

OBJS += \
./src/InitDevice.OBJ \
./src/SILABS_STARTUP.OBJ \
./src/draw.OBJ \
./src/main.OBJ 


# Each subdirectory must supply rules for building sources it contributes
src/%.OBJ: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Keil 8051 Compiler'
	wine "/home/daniel/Downloads/SimplicityStudio_v4/developer/toolchains/keil_8051/9.53/BIN/C51" "@$(patsubst %.OBJ,%.__i,$@)" || $(RC)
	@echo 'Finished building: $<'
	@echo ' '

src/InitDevice.OBJ: /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/SimplicityStudio/v4_workspace/EFM8BB3_PowerModes_2/inc/InitDevice.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h

src/%.OBJ: ../src/%.A51
	@echo 'Building file: $<'
	@echo 'Invoking: Keil 8051 Assembler'
	wine "/home/daniel/Downloads/SimplicityStudio_v4/developer/toolchains/keil_8051/9.53/BIN/AX51" "@$(patsubst %.OBJ,%.__ia,$@)" || $(RC)
	@echo 'Finished building: $<'
	@echo ' '

src/draw.OBJ: /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/bsp/bsp.h /home/daniel/SimplicityStudio/v4_workspace/EFM8BB3_PowerModes_2/inc/draw.h /home/daniel/SimplicityStudio/v4_workspace/EFM8BB3_PowerModes_2/inc/graphics/splash.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/EFM8BB3_SLSTK2022A/config/bsp_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/disp.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/render.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/spi.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/config/render_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/config/spi_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h /home/daniel/SimplicityStudio/v4_workspace/EFM8BB3_PowerModes_2/inc/config/memory_lcd_config.h

src/main.OBJ: /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/bsp/bsp.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/peripheral_driver/inc/pwr.h /home/daniel/SimplicityStudio/v4_workspace/EFM8BB3_PowerModes_2/inc/draw.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/tick.h /home/daniel/SimplicityStudio/v4_workspace/EFM8BB3_PowerModes_2/inc/InitDevice.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/EFM8BB3_SLSTK2022A/config/bsp_config.h /home/daniel/SimplicityStudio/v4_workspace/EFM8BB3_PowerModes_2/inc/config/efm8_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/disp.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/render.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/spi.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/config/render_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/config/spi_config.h /home/daniel/SimplicityStudio/v4_workspace/EFM8BB3_PowerModes_2/inc/config/memory_lcd_config.h


