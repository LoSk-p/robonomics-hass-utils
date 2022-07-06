#!/bin/bash

python3 bin/esptool.py --chip esp32 --baud 921600 --before default_reset --after hard_reset write_flash -z --flash_mode qout --flash_freq 80m --flash_size detect 0xe000 ../firmware/boot_app0.bin 0x1000 ../firmware/bootloader_qout_80m.bin 0x10000 ../firmware/firmware.bin 0x8000 ../firmware/partitions4.bin
