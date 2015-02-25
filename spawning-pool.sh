#!/bin/bash

# Install FBTFT
REPO_URI=https://github.com/notro/rpi-firmware rpi-update

# Smack my bitch up
printf 'spi-bcm2708\nstmpe_ts\ndtoverlay=pitft\n' >> /boot/config.txt
sed -i '1 s/$/ fbcon=map:10/' /boot/cmdline.txt

# Install Hive server
git clone https://github.com/yupferris/TheHiveLives.sh
./TheHiveLives/install-hive.sh

# Reboot to test
reboot
