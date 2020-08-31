# CP/M 2.2 en ALTAIR 8800

## Iniciar la demo

```
./altairz80 cpm2
```

Para un efecto más "retro" :-P
```
cool-retro-term --workdir . --fullscreen -e ./altairz80 cpm2
```

## Comandos de CP/M

### Cambio de unidad

```
X:
```
En esta máquina virtual: A: B: I: J:

### Listar archivos en el directorio (DIR)

```
DIR
```

```
DIR B:
```

```
DIR *.COM
```

### Copiar archivos (PIP)

```
I:
PIP MC.SUB=A:MC.SUB
```

```
PIP MC1.SUB=A:MC.SUB
```

```
PIP I:=B:*.TXT
```

```
DIR
```

### Borrar archivos (ERA)

```
ERA
```

```
ERA MC.SUB
```

```
DIR
```

```
ERA *.TXT
```

### Renombrar archivos (REN)

```
REN
```

```
REN MC.SUB=MC1.SUB
```

```
DIR
```

### Mostrar el contenido de un archivo (TYPE)

```
TYPE MC.SUB
```

### Cambiar el usuario actual (USER)

```
USER
```

```
USER 3
```

### Ver información de un espacio (unidades, sistemas de archivos, dipositivos)

```
STAT
```

```
STAT A:
```

```
STAT J:
```

```
STAT I:*.* $S
```

```
STAT I:MIO.COM
```

```
STAT DSK:
```

```
STAT VAR:
```

```
STAT DEV:
```

```
STAT USR:
```


### Guardar X páginas de memoria a disco (desde la dirección 100H)

```
SAVE 30 MIO.COM
```

```
MIO.COM
```
(el código del último programa cargado en la TPA)

### Muestra el contenido de un archivo binario (DUMP)

```
DUMP MIO.COM
```

## Otros programas en un disco de Apple II

```
J:
DIR
```

```
MBASIC
```

(salir con ```SYSTEM```)

## Juegos!!!

### Zork I

```
I:
zork1
```

Comandos: 
```
north, south, east, west, northeast, northwest, southeast, southwest, 
up, down, look, save, restore, restart, score, diagnostic, quit, go, 
climb, enter, out, jump, hi/hello, get/take, throw, trow {} at {}, 
open, read, drop, put {} in {}, turn {} with {}, turn on, turn off, 
move, attack, examine, inventory, eat, shout, close, tie {} to {}, 
pick, kill self with {}, break {} with {}, kill {} with {}, pray, 
drink, smell, cut {} with {}, bar, listen  
```

Juguemos un rato:

```
open mailbox
take leaflet
read leaflet
inventory
look
open door
go west
go east
open tree
take tree
climb tree
```

## Otros juegos

```
./altairz80 games
```

Para un efecto más "retro" :-P
```
cool-retro-term --workdir . --fullscreen -e ./altairz80 games
```

### Ladder

```
A:LADDER
```

Se mueve con las teclas de dirección del pad numérico. Salta con la barra espaciadora.

### Colossal Cave

```
B:ADV
```



