#!/bin/bash
cd "$(dirname "$0")"
rootDir=$(pwd)
cd ${rootDir}/../MSP430Flasher
#export LD_LIBRARY_PATH=$(pwd)
clear

echo MSP-EXP430F5529-LaunchPad Firmware Programmer
device=MSP430F5529
firmware=OutOfBox_EmulStorageKeyboard.txt

echo Programming ${firmware} into ${device} ......
#./MSP430Flasher -n ${device} -w ${rootDir}/${firmware} -v -g -z [VCC]
LD_PRELOAD=/home/dyn/ti/MSPFlasher//libmsp430.so /home/dyn/ti/MSPFlasher//MSP430Flasher \
    -n ${device} -w ${rootDir}/${firmware} -v -g -z [VCC]

read -p "Press [Enter] to continue..."
