# MS-DOS 

## Comandos de MS-DOS

* DIR
* CD
* COPY
* DEL
* TYPE
* DATE / TIME
* SYS

A partir de MS-DOS 2.0 se agregaron los siguientes comandos:

* CLS 
* MKDIR / RMDIR
* MOVE
* PRINT
* MORE

A partir de MS-DOS 3.0 se agregaron los siguientes comandos:

* PROMPT
* FIND
* BACKUP / RESTORE

A partir de MS-DOS 5.0 se agregaron los siguientes comandos:

* HELP
* MEM
* TREE / DELTREE

A partir de MS-DOS 6.0 se agregaron los siguientes comandos y utilidades:

* MEMMAKER
* UNDELETE / UNFORMAT
* DOSKEY
* MSAV / MSBACKUP

### Cambio de unidad

```
X:
```
En esta máquina virtual: A: B: C: D:


## Partes de MS-DOS

BIOS, núcleo y shell

```
DIR *.COM
```

```
DIR /A:S
```

## Uso de Memoria

```
MEM
```

Muestra programas TSR y los clasifica
```
MEM /C /P
```
Muestra memoria libre
```
MEM /F
```

Muestra detalle de todo el uso de memoria
```
MEM /D /P
```

Muestra el uso de memoria de algún modulo en particular
```
MEM /M MSDOS
```

```
MEM /M COMMAND
```

## Archivos de Inicio

```
EDIT CONFIG.SYS
```

```
EDIT AUTOEXEC.BAT
```

## Sistemas de Archivos

```
DIR /?
```

```
ATTRIB
```

```
CHKDSK C:
```

```
CHKDSK C:\DOTT\
```

```
DEFRAG
```

## Operadores

### Redireccion

```
DIR > SALIDA.TXT
```

```
TYPE > SALIDA.TXT
```

```
DIR C:\DOS >> SALIDA.TXT
```

### Tuberias

```
DIR 
```

```
DIR | SORT
```

```
DIR | SORT > SALIDA.TXT
```

```
MORE < SALIDA.TXT
```

### Filtros

```
DIR > SALIDA.TXT
```

```
SORT < SALIDA.TXT > ORDENADA.TXT
```

```
MORE < ORDENADA.TXT
```

## SHELLs Alternativos

### DOSSHELL

```
dosshell
```

### NORTON COMMANDER

```
c:\nc\nc
```

### LCARS

```
c:\lcars24\lcars24
```

## Versiones

### MS-DOS 1.25 (COMPAQ Personal Computer DOS v 1.12)

Usando la VM con la imagen de floppy cpq112.img (320k 5.25" disk image)

MS-DOS 1.25 (Compaq OEM r1.12)
Released in 1983 by COMPAQ Computer Corp For the Compaq computer.

This is an early version of MS-DOS for Compaq, rebranded as "The COMPAQ Personal Computer DOS Version 1.12"

This disk contains DOS, Basic, and demo programs for the Compaq Computer.

https://github.com/microsoft/MS-DOS

### MS-DOS 3.00

Usando la VM con la imagen de disco 

### MS-DOS 5.00

Usando la VM con la imagen de disco
