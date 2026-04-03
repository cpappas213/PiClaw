#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PIGEN_DIR="${SCRIPT_DIR}/pi-gen"

if [ ! -d "$PIGEN_DIR" ]; then
    echo "Cloning pi-gen..."
    git clone --depth 1 https://github.com/RPi-Distro/pi-gen.git "$PIGEN_DIR"
fi

cp "${SCRIPT_DIR}/config" "${PIGEN_DIR}/config"
cp -r "${SCRIPT_DIR}/stage-openclaw" "${PIGEN_DIR}/stage-openclaw"

cd "$PIGEN_DIR"
./build-docker.sh

echo ""
echo "Build complete! Image is in: ${PIGEN_DIR}/deploy/"
