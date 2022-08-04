COMMODORE 64 BASIC
==================

Iniciar el emulador VICE en modo Drean Commodore 64.

```
x64 -model drean 
```


Programa básico
---------------

Escribir:

```basic
10 PRINT "HELLO WORLD!"
```

Tipear `LIST`

Tipear `RUN`

Programa con iteraciones
------------------------

Tipear `NEW`

Escribir:
```basic
10 FOR X=1 TO 5
20 PRINT X
30 NEXT X
40 END
```

Vemos el programa en memoria con `LIST`

Tipear `RUN`

Modificamos el programa escribiendo:
```basic
20 PRINT X + 1
```

Listamos para ver los cambios con `LIST`

Ejecutamos nuevamente tipeando `RUN`


Imprimir caracteres ASCII
-------------------------

Tipear `NEW`

Escribir:
```basic
10 PRINT CHR$(147)
```

Tipear `RUN` (debería limpiar la pantalla)

Tipear `NEW`

Escribir:
```basic
10 PRINT CHR$(111)CHR$(247)CHR$(112)
20 PRINT CHR$(244)CHR$(32)CHR$(234)
30 PRINT CHR$(108)CHR$(239)CHR$(250)
```

Tipear `RUN` (dibuja una caja con caracteres ASCII)

Podemos agregar que limpie la pantalla antes de mostrar la caja

Escribir:
```basic
5 PRINT CHR$(147)
```

Tipear `RUN` 

Para ver otros caracteres consultar una tabla ASCII: https://www.c64-wiki.com/wiki/PETSCII  

Manipular valores en memoria
----------------------------

POKE / PEEK  Setea / Lee una dirección de memoria

Cambia el color del marco:
```basic
POKE 53280,(0-15)
```

Cambia el color del fondo:
```basic
POKE 53281,(0-15)
```

Cambia el color del texto:
```basic
POKE 646,(0-15)
```

Códigos de color C64

| Code |    Color    |
|:----:|:-----------:|
|   0  |    black    |
|   1  |    white    |
|   2  |     red     |
|   3  |     cyan    |
|   4  |    purple   |
|   5  |    green    |
|   6  |     blue    |
|   7  |    yellow   |
|   8  |    orange   |
|   9  |    brown    |
|  10  |     pink    |
|  11  |  dark grey  |
|  12  |     grey    |
|  13  | light green |
|  14  |  light blue |
|  15  |  light grey |


Muestra la computadora:
```basic
PRINT PEEK(65534)
```

- 72 = C64 (tambien una C128 en modo C64)
- 23 = C128
- 255 = C Plus/4, C16
- 114 = VIC20

Commodore 64 "One-liners"
-------------------------

Imprime algo interesante:
```basic
10 PRINT CHR$(205.5+RND(1)); : GOTO 10
```

Tipear `RUN`

Imprime una "granizada" en la pantalla:
```basic
10 POKE 1024+RND(1)*1000,78: GOTO 10
```

Tipear `RUN`

Reproduce sonidos al azar:
```basic
10 POKE 54272+INT(RND(1)*25),INT(RND(1)*256) : GOTO 10
```

Tipear `RUN`

Referencias
-----------

- *Manual de usuario de C64* https://www.lemon64.com/manual/
- *10 PRINT*, un libro sobre el impacto de la commodre: https://10print.org/
- *Guía de Usuario del Commodore 64*: http://www.commodore.ca/manuals/c64_users_guide/c64-users_guide-07-creating_sound.pdf
