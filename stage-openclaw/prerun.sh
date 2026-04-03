#!/bin/bash -e

if [ ! -d "${ROOTFS_DIR}" ]; then
    mkdir -p "$(dirname "${ROOTFS_DIR}")"
    cp -a "${PREV_ROOTFS_DIR}" "${ROOTFS_DIR}"
fi
