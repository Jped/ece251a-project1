################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/bsp/efm8_retargetserial/retargetio.c \
../lib/bsp/efm8_retargetserial/retargetserial.c 

OBJS += \
./lib/bsp/efm8_retargetserial/retargetio.OBJ \
./lib/bsp/efm8_retargetserial/retargetserial.OBJ 


# Each subdirectory must supply rules for building sources it contributes
lib/bsp/efm8_retargetserial/%.OBJ: ../lib/bsp/efm8_retargetserial/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Keil 8051 Compiler'
	wine "/home/daniel/Downloads/SimplicityStudio_v4/developer/toolchains/keil_8051/9.53/BIN/C51" "@$(patsubst %.OBJ,%.__i,$@)" || $(RC)
	@echo 'Finished building: $<'
	@echo ' '

lib/bsp/efm8_retargetserial/retargetserial.OBJ: /home/daniel/SimplicityStudio/v4_workspace/joystickworks/lib/bsp/efm8_retargetserial/retargetserial.h


