#!/bin/bash -e

install -m 644 files/openclaw.service "${ROOTFS_DIR}/etc/systemd/system/"
install -m 644 files/first-boot.service "${ROOTFS_DIR}/etc/systemd/system/"
install -m 755 files/first-boot.sh "${ROOTFS_DIR}/usr/local/bin/"
