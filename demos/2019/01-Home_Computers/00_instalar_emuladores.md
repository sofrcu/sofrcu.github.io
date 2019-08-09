Emuladores de Home Computers
============================

Emulador VICE
-------------

Instalar el emulador VICE http://vice-emu.sourceforge.net/
```
sudo apt-get install vice
```

Descargar los fuentes de VICE y copiar las ROMs
```
cd ~/Descargas
wget http://www.zimmers.net/anonftp/pub/cbm/crossplatform/emulators/VICE/vice-3.1.tar.gz
tar xvzf vice-3.1.tar.gz
sudo cp -R vice-3.1/data/* /usr/lib/vice/
sudo chmod -R a+r /usr/lib/vice/
```

- Iniciar el emulador de commodore 128 seleccionando Aplicaciones -> Otras -> Commodore 128.
  Si aparece un error "Sound: Fragmentation Error" (en Ubuntu 8.04 y 10.4), se soluciona seteando el sonido a 48000Hz, mediante: Settings -> Sound Settings -> Sample Rate -> 48000 Hz.
- Agregar una segunda unidad mediante: Settings -> Drive Settings -> Drive #9 Model -> 1541
- Guardar la configuración mediante: Settings -> Save Settings


Emulador openMSX
----------------

Instalar openMSX y openMSX Catapult
```
sudo apt-get install openmsx openmsx-catapult
```

Descargar las ROMs y descomprimirlas:
```
cd ~/Descargas
wget http://www.msxarchive.nl/pub/msx/emulator/openMSX/systemroms.zip
cd /usr/share/openmsx/systemroms
sudo unzip ~/Descargas/systemroms.zip .
rm ~/Descargas/systemroms.zip
```

Escanear las ROMs:
- Iniciar openMSX Catapult mediante Juegos -> openMSX Catapult
- Seleccionar File -> Test MSX Hardware