% Emuladores de Home Computers

# Emulador VICE

Instalar el emulador VICE http://vice-emu.sourceforge.net/
```
sudo apt-get install vice
```

# Emulador openMSX

Instalar openMSX 
```
sudo apt-get install openmsx 
```

Descargar las ROMs y descomprimirlas:
```
cd ~/Descargas
wget http://www.msxarchive.nl/pub/msx/emulator/openMSX/systemroms.zip
cd /usr/share/openmsx
sudo unzip ~/Descargas/systemroms.zip 
rm ~/Descargas/systemroms.zip
```

