#!/bin/bash

# Install FBTFT
REPO_URI=https://github.com/notro/rpi-firmware rpi-update

# Smack my bitch up
printf 'spi-bcm2708\nstmpe_ts\ndtoverlay=pitft\n' >> /boot/config.txt
sed -i '1 s/$/ fbcon=map:10 fbtft_device.speed=10000000/' /boot/cmdline.txt

# Install Hive server (will reboot when done)
git clone https://github.com/yupferris/TheHiveLives.git
./TheHiveLives/install-hive.sh
