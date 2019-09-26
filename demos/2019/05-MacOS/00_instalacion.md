# MacOs en una Macintosh Plus

## Utilidad 7zip
    - sudo apt update; sudo apt -y install p7zip-full

## Emulador Mini vMac
    - wget https://www.gryphel.com/d/minivmac/minivmac-36.04/minivmac-36.04-lx64.bin.tgz
    - tar xvf minivmac-36.04-lx64.bin.tgz; rm minivmac-36.04-lx64.bin.tgz
    - mv Mini\ vMac MinivMac

## Archivo con la ROM de una Macintosh Plus
    - wget http://www.redundantrobot.com/sheepshaver_files/roms/vmac.rom.zip
    - 7z e vmac.rom.zip vmac.rom; rm vmac.rom.zip; mv vmac.rom vMac.ROM

## Imagenes de disco con MacOS 1.1
    - cd MacOS_1-MacPlus 
    - wget 'https://www.oldschoolos.com/Mac/Mac%20OS%201.0-1.1d/Apple%20Mac%20OS%201.1d%20(Developer%20Release)%20(3.25).7z'
    - 7z e 'Apple Mac OS 1.1d (Developer Release) (3.25).7z' '*.image' -r
    - mv 'Disk 1.image' disk1.dsk; mv 'Disk 2.image' disk2.dsk;

## Imagenes de disco con MacOS 2.0
    - cd MacOS_2-MacPlus 
    - wget 'https://www.oldschoolos.com/Mac/Mac%20OS%202.0/Apple%20Mac%20OS%202.0%20(Finder%204.1)%20(3.25).7z'
    - 7z e 'Apple Mac OS 2.0 (Finder 4.1) (3.25).7z' '*.image' -r
    - mv 'System 2.0, Finder 4.1.image' disk1.dsk;
    
## Imagenes de disco con MacOS 3.2 
    - cd MacOS_3-MacPlus
    - wget 'https://www.oldschoolos.com/Mac/Mac%20OS%203.0/Apple%20Mac%20OS%203.2%20(Finder%205.3)%20(3.25).7z'
    - 7z e 'Apple Mac OS 3.2 (Finder 5.3) (3.25).7z' '*.image' -r
    - mv 'System 3.2, Finder 5.3.image' disk1.dsk;

## Imagenes de disco con MacOS 5.1 
    - wget 'https://www.oldschoolos.com/Mac/Mac%20OS%205.0/Apple%20Mac%20OS%205.1%20(3.25).7z'
    - 7z e 'Apple Mac OS 5.1 (3.5-800k).7z' '*.img' -r
    - mv 'System Tools 1.img' disk1.dsk; mv 'System Tools 2.img' disk2.dsk;
    - mv 'Utilities 1.img' util1.dsk; mv 'Utilities 2.img' util2.dsk;

