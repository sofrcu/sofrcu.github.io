#!/bin/bash
# Maquina virtual QEmu con MacOS 9.2.0
# 1. QEmu, openbios-ppc y 7zip
#   - sudo apt install quemu openbios-ppc p7zip-full
# 2. Imagen ISO Apple Mac OS 9.2.2 (https://macintoshgarden.org/sites/macintoshgarden.org/files/apps/macos-922-uni.zip)
#   - 7z e macos-922-uni.zip macos-922-uni.iso; rm macos-922-uni.zip
# 3. Una imagen de disco vacía creada con:
#    - qemu-img create -f qcow2 disk.qcow2 20G

qemu-system-ppc -L openbios-ppc -boot d -M mac99 -m 512 \
                -hda disk.qcow2 -cdrom macos-922-uni.iso -boot c \
                -netdev user,id=mynet0 -device sungem,netdev=mynet0

# Opciones de qemu
# -L openbios-ppc               Usar la bios openbios-ppc
# -boot d                       Bootear desde el CD-ROM
# -M mac99                      Emular una Mac99 PowerMac
# -m 512                        Asignar 512 MB de RAM
# -hda disk.qcow2               Usar la imagen disk.qcow2 como disco
# -cdrom macos-922-uni.iso      Usar este iso en el CD-ROM
# -netdev user,id=mynet0        Usar un dispositivo de red del usuario
# -device sungem,netdev=mynet0  Modelo de placa de red a emular