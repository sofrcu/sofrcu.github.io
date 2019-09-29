#!/bin/bash
#
# MS-DOS 1.25 en VirtualBox
#
# Requisitos: 
# 1. VirtualBox OSE y 7zip
#    - sudo apt update; sudo apt -y install virtualbox p7zip-full
# 2. Archivo con imagen de disquette de MS-DOS 1.25 [CDP OEM R2.11] (5.25-320k)
#    - wget https://winworldpc.com/download/c38ac396-c2a7-6f3c-e280-9e11c3a4c2a8/from/c39ac2af-c381-c2bf-1b25-11c3a4e284a2
#    - 7z e 'Microsoft MS-DOS 1.25 [CDP OEM R2.11] and Basic (5.25).7z' CDPDOS.IMG; rm 'Microsoft MS-DOS 1.25 [CDP OEM R2.11] and Basic (5.25).7z'; mv CDPDOS.IMG ms_dos-1.25.img
#
export VM="MSDOS 1.25"
# VBoxManage list ostypes
VBoxManage createvm --name "$VM" --ostype "DOS" --basefolder . --register
VBoxManage storagectl "$VM" --name "Floppy Controller" --portcount 1 --add floppy
VBoxManage storageattach "$VM" --storagectl "Floppy Controller" --port 0 --device 0 \
                         --type fdd --medium ./ms_dos-1.25.img
VBoxManage storageattach "$VM" --storagectl "Floppy Controller" --port 0 --device 1 \
                         --type fdd --medium emptydrive
VBoxManage modifyvm "$VM" --ioapic off
VBoxManage modifyvm "$VM" --boot1 floppy --boot2 none --boot3 none --boot4 none
VBoxManage modifyvm "$VM" --memory 4 --vram 8