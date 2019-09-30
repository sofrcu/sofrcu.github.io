#!/bin/bash
#
# Windows 95 en VirtualBox
#
export VM="MS Windows 95"
VBoxManage modifyvm "$VM" --boot1 disk --boot2 none --boot3 none --boot4 none
VBoxManage startvm "$VM" --type separate
