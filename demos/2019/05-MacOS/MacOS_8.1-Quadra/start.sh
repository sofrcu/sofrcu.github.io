#!/bin/bash
#
# MacOS 8.1 corriendo en una Macintosh Quadra 900 usando el Emulador BasiliskII
#
# Requisitos: 
# 1. BasiliskII, 7zip
#    - sudo apt update; sudo apt install basilisk2 p7zip-full
# 2. ROM de Macintosh Quadra 900 (http://www.redundantrobot.com/sheepshaver_files/roms/Quadra.zip)      
#    - unzip Quadra.zip; rm Quadra.zip
# 3. Imagen de disco MacOS 8 (http://download1151.mediafire.com/5xegseekpbjg/rmxbeablj1ev2qc/Basilisk_II.dmg)
#    - 7z e Basilisk_II.dmg MacintoshHD_250GB.hfv -r; rm Basilisk_II.dmg
# 4. ISO de MacOS 8.1 (https://winworldpc.com/product/mac-os-8/81)
#	
BasiliskII --nogui true --modelid 14 --cpu 4 --fpu true --ramsize 134217728 \
           --rom Quadra.rom --disk MacintoshHD_250GB.hfv --cdrom MacOS8_1.iso --extfs ./share \
           --bootdrive 1 --idlewait true --config /dev/null --frameskip 0
#
# Parámetros de BasiliskII:
# --nogui true   		Sin la interfaz gráfica de BasiliskII
# --modelid 14 			Emular una Macintosh Quadra 900
# --cpu 4 			Emular la CPU Motorola 68040 a 40Hz
# --fpu true 			Emular coprocesador matemático
# --ramsize 134217728 		124 MB de RAM
# --rom Quadra.rom 		Usar la ROM Quadra.rom
# --disk MacintoshHD_250GB.hfv 	Usar para el HD la imagen MacintoshHD_250GB.hfv
# --cdrom MacOS8_1.iso 		Montar en el CD-ROM la ISO de MacOS 8.1
# --extfs ./share \		Compartir la carpeta ./share con la máquina virtual
# --bootdrive 1 		Bootear de la unidad 1 (disco rígido)
# --idlewait true 		Espera no activa
# --config /dev/null 		No guardar en el archivo de preferencias
# --frameskip 0			No saltar cuadros de video
