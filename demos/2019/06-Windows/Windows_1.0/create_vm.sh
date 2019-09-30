#!/bin/bash
#
# Windows 1.0 en VirtualBox
#
# Requisitos: 
# 1. VirtualBox OSE y 7zip
#    - sudo apt update; sudo apt -y install virtualbox p7zip-full
# 2. Archivo con imagen de disquette de Microsoft Windows 1.01 (5.25-360k)
#    - wget https://archive.org/download/austin_1.01/1.01.zip
#    - 7z e 1.01.zip 'Windows 1.01.ima' -r; rm 1.01.zip; mv 'Windows 1.01.ima' Windows_1.0.img
#
export VM="MS Windows 1.0"
VBoxManage createvm --name "$VM" --ostype "DOS" --basefolder . --register
VBoxManage storagectl "$VM" --name "Floppy Controller" --portcount 1 --add floppy
VBoxManage storageattach "$VM" --storagectl "Floppy Controller" --port 0 --device 0 \
                         --type fdd --medium Windows_1.0.img
VBoxManage storageattach "$VM" --storagectl "Floppy Controller" --port 0 --device 1 \
                         --type fdd --medium emptydrive
VBoxManage modifyvm "$VM" --ioapic off
VBoxManage modifyvm "$VM" --boot1 floppy --boot2 none --boot3 none --boot4 none
VBoxManage modifyvm "$VM" --memory 4 --vram 8