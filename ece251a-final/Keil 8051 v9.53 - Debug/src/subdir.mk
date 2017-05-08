################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
A51_UPPER_SRCS += \
../src/SILABS_STARTUP.A51 

C_SRCS += \
../src/EFM8BB3_UART_Interrupt.c \
../src/InitDevice.c \
../src/Interrupts.c \
../src/draw.c 

OBJS += \
./src/EFM8BB3_UART_Interrupt.OBJ \
./src/InitDevice.OBJ \
./src/Interrupts.OBJ \
./src/SILABS_STARTUP.OBJ \
./src/draw.OBJ 


# Each subdirectory must supply rules for building sources it contributes
src/%.OBJ: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Keil 8051 Compiler'
	wine "/home/daniel/Downloads/SimplicityStudio_v4/developer/toolchains/keil_8051/9.53/BIN/C51" "@$(patsubst %.OBJ,%.__i,$@)" || $(RC)
	@echo 'Finished building: $<'
	@echo ' '

src/EFM8BB3_UART_Interrupt.OBJ: /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_retargetserial/retargetserial.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/inc/InitDevice.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/inc/draw.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_memory_lcd/inc/tick.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/bsp.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/kits/common/drivers/efm8_joystick/joystick.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_memory_lcd/inc/disp.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_memory_lcd/inc/render.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_memory_lcd/inc/spi.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.4/kits/EFM8BB3_SLSTK2022A/config/bsp_config.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/inc/joystick_config.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_memory_lcd/inc/config/render_config.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_memory_lcd/inc/config/spi_config.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/inc/memory_lcd_config.h

src/InitDevice.OBJ: /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.4/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/inc/InitDevice.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.4/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h

src/%.OBJ: ../src/%.A51
	@echo 'Building file: $<'
	@echo 'Invoking: Keil 8051 Assembler'
	wine "/home/daniel/Downloads/SimplicityStudio_v4/developer/toolchains/keil_8051/9.53/BIN/AX51" "@$(patsubst %.OBJ,%.__ia,$@)" || $(RC)
	@echo 'Finished building: $<'
	@echo ' '

src/draw.OBJ: /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/bsp.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/inc/draw.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/inc/splash.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.4/kits/EFM8BB3_SLSTK2022A/config/bsp_config.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_memory_lcd/inc/disp.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_memory_lcd/inc/render.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_memory_lcd/inc/spi.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_memory_lcd/inc/config/render_config.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_memory_lcd/inc/config/spi_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/inc/memory_lcd_config.h


