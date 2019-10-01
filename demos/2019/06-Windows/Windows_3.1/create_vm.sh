#!/bin/bash
#
# Windows 3.1 en VirtualBox
#
# Requisitos: 
# 1. VirtualBox OSE y 7zip
#    - sudo apt update; sudo apt -y install virtualbox p7zip-full
# 2. Archivo con imagen de disquette de Microsoft Windows Windows 3.1
#    - wget http://www.386experience.com/virtual/Windows%203.11.ova
#    - 7z e 'Windows 3.11.ova' 'Windows 3.11-disk1.vmdk' -r; rm 'Windows 3.11.ova'; mv 'Windows 3.11-disk1.vmdk' Windows_3.1.vmdk
#
export VM="MS Windows 3.1"
VBoxManage createvm --name "$VM" --ostype "Windows31" --basefolder . --register
VBoxManage storagectl "$VM" --name "Floppy Controller" --portcount 1 --add floppy
VBoxManage storageattach "$VM" --storagectl "Floppy Controller" --port 0 --device 0 \
                         --type fdd --medium emptydrive
VBoxManage storagectl "$VM" --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach "$VM" --storagectl "IDE Controller" --port 0 --device 0 \
                         --type hdd --medium "Windows_3.1.vmdk"
VBoxManage storageattach "$VM" --storagectl "IDE Controller" --port 0 --device 1 \
                         --type dvddrive --medium emptydrive
VBoxManage modifyvm "$VM" --ioapic off
VBoxManage modifyvm "$VM" --boot1 disk --boot2 none --boot3 none --boot4 none
VBoxManage modifyvm "$VM" --audiocontroller sb16 --audioout on
VBoxManage modifyvm "$VM" --memory 32 --vram 16