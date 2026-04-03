#!/bin/bash

MARKER=/home/pi/.openclaw-configured

if [ -f "$MARKER" ]; then
    exit 0
fi

echo "========================================="
echo "  Welcome to PiClaw!"
echo "  OpenClaw AI Agent for Raspberry Pi"
echo "========================================="
echo ""
echo "To get started, SSH in or use this console and run:"
echo ""
echo "  openclaw onboard --install-daemon"
echo ""
echo "This will configure your API keys and integrations."
echo "OpenClaw will start automatically after setup."
echo ""

touch "$MARKER"
systemctl disable first-boot.service
