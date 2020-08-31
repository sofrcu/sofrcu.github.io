# CP/M en Commodore 128

## Iniciar Commodore 128

Seleccionar para ambas unidades de disco el tipo 1571
(Ajustes -> Ajustes unidad de disco -> Modelo unidad #8 -> 1571)
(Ajustes -> Ajustes unidad de disco -> Modelo unidad #9 -> 1571)

Cargar la imagen c128_cp_m_system_disk_dec_8_1985_622-580745.d64 en la unidad #8
Cargar la imagen c128-cpm.utilities.d64 en la unidad #9

Reiniciar la maquina con
(Archivo -> Reiniciar -> Soft)


## Comandos internos del CCP

### Cambio de unidad

A: B: M:


### Listar archivos en la unidad (DIR)

DIR

DIR B:

DIR *.COM

###  Listar archivos del sistema en la unidad (DIRSYS, DIRS)

DIRS A:


### Renombrar archivos (RENAME, REN)

RENAME

REN A:NEW.BAS=OLD.BAS

### Mostrar el contenido de un archivo (TYPE)

TYPE COPYSYS.COM

B:TYPE HELP.HLP [NOPAGE]

### Cambiar el usuario actual (USER)

USER

USER 3


## Comandos externos de CP/M

### Muestra / setea la fecha y hora

B:DATE

B:DATE C

B:DATE 06/12/89 11:30:0

B:DATE SET

### Listar con opciones (DIR)

B:DIR [ALL]

B:DIR [FULL]

B:DIR [SIZE] *.COM

B:DIR A: [FULL]

### Muestra el contenido de un archivo binario (DUMP)

B:DUMP B:SAVE.COM

### Borrar archivos (ERASE, ERA)

ERA TEST.BAS

ERASE *.TXT

B:ERASE

B:ERASE *.TXT [CONFIRM]


## Explorando el equipo


### Ver información de los discos

B:DIR A:[FULL]

B:SHOW A:

B:SHOW A:[USERS]

B:SHOW A:[DRIVE]

B:SHOW A:[LABEL]
B:SET A:[NAME=CPM3]
B:SHOW A:[LABEL]

### Muestra setea los dispositivos del equipo (DEVICE)

B:DEVICE

B:DEVICE CONSOLE

B:DEVICE CONSOLE [PAGE]

B:DEVICE CONSOLE [COLUMNS=80 LINES=25]

B:DEVICE LST:=NULL

## Juegos

### ZORK I

Cargar la imagen zork1.d71 en la unidad #9

B:
ZORK1.COM

Comandos

open mailbox
take leaflet
read leaflet

look

open door

go west

go east

open tree
take tree

climb tree
