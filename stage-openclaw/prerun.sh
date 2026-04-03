#!/bin/bash -e

if [ ! -d "${ROOTFS_DIR}" ]; then
    cp -a "${PREV_ROOTFS_DIR}" "${ROOTFS_DIR}"
fi
