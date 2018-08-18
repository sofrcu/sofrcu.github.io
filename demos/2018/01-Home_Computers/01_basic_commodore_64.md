COMMODORE 64 BASIC
==================

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

Para ver otros carcteres consultar una tabla ASCII: https://www.c64-wiki.com/wiki/PETSCII  

Manipular valores en memoria
----------------------------

POKE / PEEK  Setea / Lee una dirección de memoria

Cambia el color del marco:
```basic
POKE 53280,(0-15)
```

Cambia el color del texto:
```basic
POKE 241,(0-15)
```

Muestra la computadora:
```basic
PRINT PEEK(65534)
```

- 72 = C64 (tambien una C128 en modo C64)
- 23 = C128
- 255 = C Plus/4, C16
- 114 = VIC20

Reproduce sonidos al azar:
```basic
10 POKE 54272+INT(RND(1)*25),INT(RND(1)*256) : GOTO 10
```

Tipear `RUN`

Guía de Usuario del Commodore 64: http://www.commodore.ca/manuals/c64_users_guide/c64-users_guide-07-creating_sound.pdf
