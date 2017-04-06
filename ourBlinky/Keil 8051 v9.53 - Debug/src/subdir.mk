################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
A51_UPPER_SRCS += \
../src/SILABS_STARTUP.A51 

C_SRCS += \
../src/EFM8BB3_Blinky.c \
../src/InitDevice.c \
../src/Interrupts.c 

OBJS += \
./src/EFM8BB3_Blinky.OBJ \
./src/InitDevice.OBJ \
./src/Interrupts.OBJ \
./src/SILABS_STARTUP.OBJ 


# Each subdirectory must supply rules for building sources it contributes
src/%.OBJ: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Keil 8051 Compiler'
	wine "/home/daniel/Downloads/SimplicityStudio_v4/developer/toolchains/keil_8051/9.53/BIN/C51" "@$(patsubst %.OBJ,%.__i,$@)" || $(RC)
	@echo 'Finished building: $<'
	@echo ' '

src/EFM8BB3_Blinky.OBJ: /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/SimplicityStudio/v4_workspace/EFM8BB3_Blinky_2/inc/InitDevice.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h

src/InitDevice.OBJ: /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/SimplicityStudio/v4_workspace/EFM8BB3_Blinky_2/inc/InitDevice.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h

src/Interrupts.OBJ: /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Register_Enums.h /home/daniel/Downloads/SimplicityStudio_v4/developer/sdks/8051/v4.0.3/Device/EFM8BB3/inc/SI_EFM8BB3_Defs.h

src/%.OBJ: ../src/%.A51
	@echo 'Building file: $<'
	@echo 'Invoking: Keil 8051 Assembler'
	wine "/home/daniel/Downloads/SimplicityStudio_v4/developer/toolchains/keil_8051/9.53/BIN/AX51" "@$(patsubst %.OBJ,%.__ia,$@)" || $(RC)
	@echo 'Finished building: $<'
	@echo ' '


