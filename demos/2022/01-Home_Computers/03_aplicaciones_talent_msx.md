% Aplicaciones MSX

Iniciar la máquina en modo BASIC con:

```
openmsx -machine Talent_DPC-200 -command "plug joyporta keyjoystick1"
```

Además configura el Joystick port 1 como 'keyjoystick1'
De esta manera el personaje se mueve con las teclas del cursor los botones son espacio, 'M' y 'N'


# Juegos MSX en la Talent DPC-200

## Pac Man (1984)

Cargar la ROM `Pac_Man-1984-Namco-J.rom` en la unidad de cartuchos A.

```
openmsx -machine Talent_DPC-200 -command "plug joyporta keyjoystick1" -carta cartuchos_msx/Pac_Man-1984-Namco-J.rom
```

## Yie Ar Kung-Fu (1985)

Cargar la ROM `Yie_Ar_Kung-Fu-1985-Konami-J.rom` en la unidad de cartuchos A.

```
openmsx -machine Talent_DPC-200 -command "plug joyporta keyjoystick1" -carta cartuchos_msx/Yie_Ar_Kung-Fu-1985-Konami-J.rom
```

## The Goonies (1986)

Cargar la ROM `Goonies_The-1986-Konami-J.rom` en la unidad de cartuchos A.

```
openmsx -machine Talent_DPC-200 -command "plug joyporta keyjoystick1" -carta cartuchos_msx/Goonies_The-1986-Konami-J.rom
```

## F1 Spirit (1986)

Cargar la ROM `F1_Spirit-1987-Konami-J.rom` en la unidad de cartuchos A.

```
openmsx -machine Talent_DPC-200 -command "plug joyporta keyjoystick1" -carta cartuchos_msx/F1_Spirit-1987-Konami-J.rom
```

# Juegos MSX2 en la Talent TPC-310

## Metal Gear

Cargar la ROM `Metal_Gear-Eu.rom` en la unidad de cartuchos A.

```
openmsx -machine Talent_TPC-310 -command "plug joyporta keyjoystick1" -carta cartuchos_msx2/Metal_Gear-Eu.rom
```

## Utilidades MSX2

Iniciar la máquina en modo BASIC con:

```
openmsx -machine Talent_TPC-310 -command "plug joyporta keyjoystick1"
```

Presionar simultáneamente las teclas control y mayúsculas de la izquierda.


### Easter Egg

Llevar el cursor hasta la esquina inferior derecha y presionar la barra espaciadora. Esperar varios segundos.
Aparecerán las imagenes del equipo de Telemática.
