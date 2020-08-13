Aplicaciones COMMODORE 64
=========================

Cargar algunos juegos Commodore 64
----------------------------------

### Popeye (1985)

Cargar la imagen `Popeye.d64` en la diquetera #8.

Para cargar el contenido de archivo especial $ del disco:
```basic
LOAD "$",8
```

Para ver los programas en el disco
```basic
LIST
```

Cargar el programa `POPEYE `
```basic
LOAD "POPEYE ",8
```

```basic
LIST
```

```basic
RUN
```

(Desactivar el joystick 2 y setear el joystick 1 como 'Teclado numérico')
Los números mueven en las 8 direcciones y 0 dispara


### Gauntlet (1986)

Cargar la imagen `Gauntlet.d64` en la diquetera #8.

Para cargar el contenido de archivo especial $ del disco
```basic
LOAD "$",8
```

Para ver los programas en el disco
```basic
LIST
```

Para cargar el contenido del primer programa del disco en modo binario
```basic
LOAD "*",8,1
```

```basic
RUN
```


### Commando (1985)

Cargar la imagen `Commando.d64` en la diquetera #8.

Para cargar el contenido de archivo especial $ del disco
```basic
LOAD "$",8
```

Para ver los programas en el disco
```basic
LIST
```

Cargar el programa `COMMANDO`
```basic
LOAD "COMMANDO",8
```

```basic
RUN
```

(Desactivar el joystick 1 y setear el joystick 2 como 'Teclado numérico')
Los números mueven en las 8 direcciones y 0 dispara

GEOS para Drean Commodore 64
----------------------------

Cargar la imagen `GEOSDR12.D64` en la diquetera #8.

Para cargar el contenido de archivo especial $ del disco
```basic
LOAD "$",8
```

Para ver los programas en el disco
```basic
LIST
```

Para cargar y correr GEOS
```basic
LOAD "*",8,1
```
