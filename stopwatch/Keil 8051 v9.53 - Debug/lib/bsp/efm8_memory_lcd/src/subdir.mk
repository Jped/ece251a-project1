################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/bsp/efm8_memory_lcd/src/disp.c \
../lib/bsp/efm8_memory_lcd/src/render.c 

OBJS += \
./lib/bsp/efm8_memory_lcd/src/disp.OBJ \
./lib/bsp/efm8_memory_lcd/src/render.OBJ 


# Each subdirectory must supply rules for building sources it contributes
lib/bsp/efm8_memory_lcd/src/%.OBJ: ../lib/bsp/efm8_memory_lcd/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Keil 8051 Compiler'
	wine "/home/daniel/Downloads/SimplicityStudio_v4/developer/toolchains/keil_8051/9.53/BIN/C51" "@$(patsubst %.OBJ,%.__i,$@)" || $(RC)
	@echo 'Finished building: $<'
	@echo ' '

lib/bsp/efm8_memory_lcd/src/disp.OBJ: /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/bsp/bsp.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/utils.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/spi.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/tick.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/disp.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/EFM8BB3_SLSTK2022A/config/bsp_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/config/spi_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h

lib/bsp/efm8_memory_lcd/src/render.OBJ: /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/bsp/bsp.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/disp.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/render.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/graphics/thinfont.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/EFM8BB3_SLSTK2022A/config/bsp_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_memory_lcd/inc/config/render_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/SimplicityStudio/v4_workspace/EFM8BB3_PowerModes_2/inc/config/memory_lcd_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h


