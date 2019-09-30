#!/bin/bash
#
# Windows 95 en VirtualBox
#
# Requisitos: 
# 1. VirtualBox OSE y 7zip
#    - sudo apt update; sudo apt -y install virtualbox p7zip-full
# 2. Archivo con imagen de disco de Microsoft Windows 95
#    - wget https://archive.org/download/windows_95_vdi/windows_95_vdi.zip
#    - 7z e windows_95_vdi.zip Windows_95.vdi; rm windows_95_vdi.zip;
# 3. Descargar el parche para CPUs rápidos
#    - wget http://www.tmeeco.eu/9X4EVER/GOODIES/FIX95CPU_V3_FINAL.ZIP
#    - 7z e FIX95CPU_V3_FINAL.ZIP FIX95CPU.IMA; rm FIX95CPU_V3_FINAL.ZIP;
# 4. Descargar programas adicionales
#    - wget -P share https://archive.org/download/DiabloIiDemo/DiabloIIDemo.exe

export VM="MS Windows 95"
# VBoxManage list ostypes
VBoxManage createvm --name "$VM" --ostype "Windows95" --basefolder . --register
VBoxManage storagectl "$VM" --name "Floppy Controller" --portcount 1 --add floppy
VBoxManage storageattach "$VM" --storagectl "Floppy Controller" --port 0 --device 0 \
                         --type fdd --medium FIX95CPU.IMA
VBoxManage storagectl "$VM" --name "IDE Controller" --add ide --controller PIIX4
VBoxManage storageattach "$VM" --storagectl "IDE Controller" --port 0 --device 0 \
                         --type hdd --medium "Windows_95.vdi"
VBoxManage storageattach "$VM" --storagectl "IDE Controller" --port 0 --device 1 \
                         --type dvddrive --medium emptydrive
VBoxManage modifyvm "$VM" --ioapic on
VBoxManage modifyvm "$VM" --boot1 floppy --boot2 disk --boot3 none --boot4 none
VBoxManage modifyvm "$VM" --memory 512 --vram 128
VBoxManage modifyvm "$VM" --audiocontroller sb16
VBoxManage modifyvm "$VM" --nic1 nat
# Iniciamos la máquina para aplicar el parche
VBoxManage startvm "$VM" --type separate

# Opcional: crear un ISO con los archivos adicionales
# rm share.iso; mkisofs -l -input-charset default -allow-lowercase -allow-multidot -o share.iso ./share