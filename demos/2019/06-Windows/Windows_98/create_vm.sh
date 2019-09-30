#!/bin/bash
#
# Windows 95 en VirtualBox
#
# Requisitos: 
# 1. VirtualBox OSE y 7zip
#    - sudo apt update; sudo apt -y install virtualbox p7zip-full
# 2. Archivo con imagen de disco de Microsoft Windows 98
#    - wget https://archive.org/download/Windows98vdi/Windows_98.vdi.zip
#    - 7z e Windows_98.vdi.zip Windows_98.vdi; rm Windows_98.vdi.zip;

export VM="MS Windows 98"
# VBoxManage list ostypes
VBoxManage createvm --name "$VM" --ostype "Windows98" --basefolder . --register
VBoxManage storagectl "$VM" --name "Floppy Controller" --portcount 1 --add floppy
VBoxManage storageattach "$VM" --storagectl "Floppy Controller" --port 0 --device 0 \
                         --type fdd --medium emptydrive
VBoxManage storagectl "$VM" --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach "$VM" --storagectl "IDE Controller" --port 0 --device 0 \
                         --type hdd --medium "Windows_98.vdi"
VBoxManage storageattach "$VM" --storagectl "IDE Controller" --port 0 --device 1 \
                         --type dvddrive --medium emptydrive
VBoxManage modifyvm "$VM" --ioapic on
VBoxManage modifyvm "$VM" --boot1 floppy --boot2 disk --boot3 none --boot4 none
VBoxManage modifyvm "$VM" --memory 512 --vram 128
VBoxManage modifyvm "$VM" --audiocontroller sb16
VBoxManage modifyvm "$VM" --nic1 nat
# Opcional: crear un ISO con los archivos adicionales
# rm share.iso; mkisofs -l -input-charset default -allow-lowercase -allow-multidot -o share.iso ./share
