# Emuladores de Home Computers

Demo realizada en Ubuntu Mate 22.04.1 64 bits

## Emulador VICE

Instalar el emulador VICE http://vice-emu.sourceforge.net/
```
sudo apt install vice
```

Por cuestiones de licencias el paquete ubuntu no contiene las ROMS de los equipos, las mismas deben se copiadas desde el código fuente de VICE.

Descargar el paquete fuente de VICE (misma versión del paquete ubuntu) desde https://sourceforge.net/projects/vice-emu/files/releases/

Descomprimirlo desde el mismo directorio donde lo bajamos con:
```
tar xvzf vice-3.6.1.tar.gz
```

Copiar los archivos de ROMs a /usr/share/vice (como superusuario)
```
sudo cp -R ./vice-3.6.1/data/* /usr/share/vice/ 
```

Eliminar los archivos descargados con:
```
rm -rf vice-3.6.1*
```


## Emulador openMSX

Instalar openMSX 
```
sudo apt install openmsx openmsx-catapult
```

Por cuestiones de licencias el paquete ubuntu no contiene las ROMS de los equipos, las mismas deben ser obtenidas desde otro lugar.

Descargar las ROMs y descomprimirlas:
```
cd /tmp
wget http://www.msxarchive.nl/pub/msx/emulator/openMSX/systemroms.zip
cd /usr/share/openmsx
sudo unzip /tmp/systemroms.zip
rm /tmp/systemroms.zip
```

