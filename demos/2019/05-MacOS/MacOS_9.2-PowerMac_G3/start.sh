#!/bin/bash
# Maquina virtual QEmu con MacOS 9.2.0
# 1. QEmu, openbios-ppc y 7zip
#   - sudo apt install quemu openbios-ppc p7zip-full
# 2. Imagen ISO Apple Mac OS 9.2.2 (https://macintoshgarden.org/sites/macintoshgarden.org/files/apps/macos-922-uni.zip)
#   - 7z e macos-922-uni.zip macos-922-uni.iso; rm macos-922-uni.zip
# 3. Una imagen de disco vacía:
#    - qemu-img ...

qemu-system-ppc -L openbios-ppc -boot d -M mac99 -m 512 \
                -hda disk.qcow2 -cdrom macos-922-uni.iso -boot c \
                -netdev user,id=mynet0 -device sungem,netdev=mynet0

