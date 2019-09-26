#!/bin/bash
#
# MacOS 1.1 corriendo en una Macintosh Plus usando el Emulador Mini vMac
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
# 3. Imagenes de disco con MacOS 1.1 
#    - wget 'https://www.oldschoolos.com/Mac/Mac%20OS%201.0-1.1d/Apple%20Mac%20OS%201.1d%20(Developer%20Release)%20(3.25).7z'
#    - 7z e 'Apple Mac OS 1.1d (Developer Release) (3.25).7z' '*.image' -r
#    - mv 'Disk 1.image' disk1.dsk; mv 'Disk 2.image' disk2.dsk;
# 
./MinivMac

