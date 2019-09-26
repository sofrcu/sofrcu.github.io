#!/bin/bash
#
# MacOS 5.1 corriendo en una Macintosh Plus usando el Emulador Mini vMac
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
# 3. Imagenes de disco con MacOS 2.0 
#    - wget 'https://www.oldschoolos.com/Mac/Mac%20OS%205.0/Apple%20Mac%20OS%205.1%20(3.25).7z'
#    - 7z e 'Apple Mac OS 5.1 (3.5-800k).7z' '*.img' -r
#    - mv 'System Tools 1.img' disk1.dsk; mv 'System Tools 2.img' disk2.dsk;
#    - mv 'Utilities 1.img' util1.dsk; mv 'Utilities 2.img' util2.dsk;
# 
./MinivMac

