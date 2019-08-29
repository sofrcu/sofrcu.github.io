# Monitores ALTAIR 8800

## SCP 8086 Monitor

El 8086 monitor fue escrito por Tim Patterson (que luego desarrollara y vendiera 86-DOS a Microsoft)

### Instrucciones SCP 8086 Monitor 

- `B` Boot (carga el contenido del disco desde el sector 0 en la dirección 200H)
- `D` Dump (muestra contenido de memoria)
- `E` Enter (permite igresar información en la memoria)
- `F` Fill (llena un rango de memoria con un valor determinado)
- `M` Move (mueve un bloque de memoria)
- `G` Go (carga registros desde el área de guardado de registros)
- `I` Input (ingresa un valor desde un puerto especificado y lo muestra)
- `O` Output (envia un valor a un puerto de E/S)
- `R` Register (muestra los valores del área de guardado de registros)
- `S` Search (busca un valor en la memoria)
- `T` Trace (se hace un trace de la o las siguientes instrucciones)

### Uso del Monitor

Iniciar el emulador de Altair 8800 con:

```
./altairz80 86dos
```

Escribir:
```
D FF7D0
F FF800 FFFFF 00
```
Ups!!! (El código de 86 Monitor se carga a partir de la dirección FF800)


Escribir:

```
F 400 L10 40
E 410 EB EE
D 400 L12
R
G 410
G 400 412
G
```

Programa en loop infinito incrementando AX.


Referencias
-----------

* http://www.patersontech.com/dos/manuals.aspx