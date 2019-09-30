#!/bin/bash
#
# Windows 1.0 en VirtualBox
#
# Requisitos: 
# 1. VirtualBox OSE y 7zip
#    - sudo apt update; sudo apt -y install virtualbox p7zip-full
# 2. Archivo con imagen de disquette de Microsoft Windows 2.03
#    - wget https://archive.org/download/win21_201903/New%20Folder%20%281%29.zip
#    - 7z e  'New Folder (1).zip' 'Win 2.03.IMA' -r; rm 'New Folder (1).zip'; mv 'Win 2.03.IMA' Windows_2.03.img
#
export VM="MS Windows 2.03"
VBoxManage createvm --name "$VM" --ostype "DOS" --basefolder . --register
VBoxManage storagectl "$VM" --name "Floppy Controller" --portcount 1 --add floppy
VBoxManage storageattach "$VM" --storagectl "Floppy Controller" --port 0 --device 0 \
                         --type fdd --medium Windows_2.03.img
VBoxManage storageattach "$VM" --storagectl "Floppy Controller" --port 0 --device 1 \
                         --type fdd --medium emptydrive
VBoxManage modifyvm "$VM" --ioapic off
VBoxManage modifyvm "$VM" --boot1 floppy --boot2 none --boot3 none --boot4 none
VBoxManage modifyvm "$VM" --memory 4 --vram 8