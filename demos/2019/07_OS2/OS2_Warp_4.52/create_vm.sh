#!/bin/bash
#
# OS/2 WARP 4.52 en VirtualBox
#
# Requisitos: 
# 1. VirtualBox OSE y 7zip
#    - sudo apt update; sudo apt -y install virtualbox p7zip-full
# 2. Archivo con imagen de disco rígido de OS/2 WARP 4.52
#    - wget 'https://archive.org/download/VMOS2Warp4.52/IBM%20OS_2%20Warp%204.52%20-%20FIX6More.zip'
#    - 7z e 'IBM OS_2 Warp 4.52 - FIX6More.zip' 'IBM OS_2 Warp 4.52_.vdi' -r; rm 'IBM OS_2 Warp 4.52 - FIX6More.zip'; mv 'IBM OS_2 Warp 4.52_.vdi' OS2_Warp_4.52.vdi
#
export VM="OS/2 WARP 4.52"
VBoxManage createvm --name "$VM" --ostype "OS2Warp45" --basefolder . --register
VBoxManage storagectl "$VM" --name "Floppy Controller" --portcount 1 --add floppy
VBoxManage storageattach "$VM" --storagectl "Floppy Controller" --port 0 --device 0 \
                         --type fdd --medium emptydrive
VBoxManage storagectl "$VM" --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach "$VM" --storagectl "IDE Controller" --port 0 --device 0 \
                         --type hdd --medium "OS2_Warp_4.52.vdi"
VBoxManage storageattach "$VM" --storagectl "IDE Controller" --port 0 --device 1 \
                         --type dvddrive --medium emptydrive
VBoxManage modifyvm "$VM" --acpi on
VBoxManage modifyvm "$VM" --boot1 disk --boot2 none --boot3 none --boot4 none
VBoxManage modifyvm "$VM" --audiocontroller sb16 --audioout on
VBoxManage modifyvm "$VM" --usbohci on
VBoxManage modifyvm "$VM" --memory 64 --vram 16