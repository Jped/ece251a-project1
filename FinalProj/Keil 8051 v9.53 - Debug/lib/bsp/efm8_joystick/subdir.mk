################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/bsp/efm8_joystick/joystick.c 

OBJS += \
./lib/bsp/efm8_joystick/joystick.OBJ 


# Each subdirectory must supply rules for building sources it contributes
lib/bsp/efm8_joystick/%.OBJ: ../lib/bsp/efm8_joystick/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Keil 8051 Compiler'
	wine "/home/daniel/Downloads/SimplicityStudio_v4/developer/toolchains/keil_8051/9.53/BIN/C51" "@$(patsubst %.OBJ,%.__i,$@)" || $(RC)
	@echo 'Finished building: $<'
	@echo ' '

lib/bsp/efm8_joystick/joystick.OBJ: /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/bsp.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_joystick/joystick.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.4/kits/EFM8BB3_SLSTK2022A/config/bsp_config.h /home/daniel/SimplicityStudio/v4_workspace/joystickworks/inc/joystick_config.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h


