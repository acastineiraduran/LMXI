# CSS/XML

## Reglas de estilo

Tambien llamadas unidades de CSS:

```css
Selector {propiedad:valor; propiedad:valor; ... propiedad:valor}
```

`selector` etiqueta de XML

Agrupación de selectores:

Ejemplo docu xml con agrupación de selectores

```xml
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet href="ejemplo1.css" type="text/css"?>
<TEXTOS>
	<POEMA>
		<VERSO>Por el molino del huerto </VERSO>
		<VERSO> Asciende una enredadera</VERSO>
		<VERSO>........................ </VERSO>
	</POEMA>
	<AUTORA>Juana de Ibarbourou</AUTORA>
</TEXTOS>
```

Correspondiente css con agru de selectores = **agrupacion de elementos**

```css
POEMA,AUTORA{display: block; color: blue}
```

Pseudo elementos

Dos elementos especiales que necesitan carac específicas

Nomenclatura: ELEMENTO:pseudo-elemento Lista_de_Estilos

```css
AUTORA:first-letter {color: green}
```