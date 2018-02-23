################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/avnet_console.c \
../src/avnet_console_scanput.c \
../src/avnet_console_serial.c \
../src/avnet_console_tokenize.c \
../src/cat9554.c \
../src/demo.c \
../src/edid_fmc_hdmi_cam.c \
../src/main.c \
../src/sleep.c \
../src/xaxivdma_ext.c 

OBJS += \
./src/avnet_console.o \
./src/avnet_console_scanput.o \
./src/avnet_console_serial.o \
./src/avnet_console_tokenize.o \
./src/cat9554.o \
./src/demo.o \
./src/edid_fmc_hdmi_cam.o \
./src/main.o \
./src/sleep.o \
./src/xaxivdma_ext.o 

C_DEPS += \
./src/avnet_console.d \
./src/avnet_console_scanput.d \
./src/avnet_console_serial.d \
./src/avnet_console_tokenize.d \
./src/cat9554.d \
./src/demo.d \
./src/edid_fmc_hdmi_cam.d \
./src/main.d \
./src/sleep.d \
./src/xaxivdma_ext.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../radio_bsp_0/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


