#!/bin/bash
#
# MacOS 3.2 corriendo en una Macintosh Plus usando el Emulador Mini vMac
#
# Requisitos: 
# 1. Utilidad 7zip
#    - sudo apt update; sudo apt -y install p7zip-full
# 1. Emulador Mini vMac
#    - wget https://www.gryphel.com/d/minivmac/minivmac-36.04/minivmac-36.04-lx64.bin.tgz
#    - tar xvf minivmac-36.04-lx64.bin.tgz; rm minivmac-36.04-lx64.bin.tgz
#    - mv Mini\ vMac MinivMac
# 2. Archivo con la ROM de una Macintosh Plus
#    - wget http://www.redundantrobot.com/sheepshaver_files/roms/vmac.rom.zip
#    - 7z e vmac.rom.zip vmac.rom; rm vmac.rom.zip; mv vmac.rom vMac.ROM
# 3. Imagenes de disco con MacOS 3.2
#    - wget 'https://www.oldschoolos.com/Mac/Mac%20OS%203.0/Apple%20Mac%20OS%203.2%20(Finder%205.3)%20(3.25).7z'
#    - 7z e 'Apple Mac OS 3.2 (Finder 5.3) (3.25).7z' '*.image' -r
#    - mv 'System 3.2, Finder 5.3.image' disk1.dsk;
# 
./MinivMac

