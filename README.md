# PiClaw

A pre-built Raspberry Pi OS image with [OpenClaw](https://github.com/openclaw/openclaw) baked in. Flash it, boot it, add your API keys, and you have a dedicated AI agent running on a Pi.

[![Build PiClaw Image](https://github.com/cpappas213/PiClaw/actions/workflows/build-image.yml/badge.svg)](https://github.com/cpappas213/PiClaw/actions/workflows/build-image.yml)

## Download

**[Download the latest PiClaw image](https://github.com/cpappas213/PiClaw/releases/latest)**

## Quick Start

1. **Flash** the `.img.xz` file to an SD card or USB SSD using [Raspberry Pi Imager](https://www.raspberrypi.com/software/) or [balenaEtcher](https://etcher.balena.io/)
2. **Boot** the Raspberry Pi
3. **SSH in** with user `pi` / password `piclaw`
4. **Set up OpenClaw:**
   ```bash
   openclaw onboard --install-daemon
   ```
5. OpenClaw starts automatically after configuration

## What's Included

- **Raspberry Pi OS Lite (64-bit)** — minimal headless image, no desktop
- **Node.js 24** — runtime for OpenClaw
- **OpenClaw** — pre-installed globally via npm
- **SSH enabled** by default
- **Optimized for headless use** — GPU memory reduced, Bluetooth disabled

## Hardware Requirements

| Model | RAM | Status |
|-------|-----|--------|
| Raspberry Pi 5 | 8 GB | Recommended |
| Raspberry Pi 4 | 4 GB | Supported |
| Raspberry Pi 4 | 2 GB | Minimum (add swap) |

A USB SSD is strongly recommended over an SD card for performance and durability.

## How It's Built

This repo uses [pi-gen](https://github.com/RPi-Distro/pi-gen) (the official Raspberry Pi OS image builder) with a custom stage that installs Node.js and OpenClaw. A GitHub Actions workflow builds a fresh image automatically:

- On every push to `main`
- On the 1st of each month (picks up OpenClaw and OS updates)
- Manually via workflow dispatch

## Building Locally

Requires Docker. On a Linux machine:

```bash
./build.sh
```

The resulting image will be in `pi-gen/deploy/`.

## Changing the Default Password

After first boot, change the default password:

```bash
passwd
```

## License

This project is MIT licensed. Raspberry Pi OS and OpenClaw are distributed under their own respective licenses.
