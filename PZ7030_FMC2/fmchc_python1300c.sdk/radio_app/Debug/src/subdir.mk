################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/cat9554.c \
../src/edid_fmc_hdmi_cam.c \
../src/main.c \
../src/radio.c \
../src/sleep.c \
../src/xaxivdma_ext.c 

OBJS += \
./src/cat9554.o \
./src/edid_fmc_hdmi_cam.o \
./src/main.o \
./src/radio.o \
./src/sleep.o \
./src/xaxivdma_ext.o 

C_DEPS += \
./src/cat9554.d \
./src/edid_fmc_hdmi_cam.d \
./src/main.d \
./src/radio.d \
./src/sleep.d \
./src/xaxivdma_ext.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../radio_bsp_0/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


