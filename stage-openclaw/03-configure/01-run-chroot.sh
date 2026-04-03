#!/bin/bash -e

systemctl enable openclaw.service
systemctl enable first-boot.service

# Reduce GPU memory allocation to free RAM for OpenClaw
echo "gpu_mem=16" >> /boot/firmware/config.txt

# Disable Bluetooth to free resources
echo "dtoverlay=disable-bt" >> /boot/firmware/config.txt
systemctl disable hciuart || true
