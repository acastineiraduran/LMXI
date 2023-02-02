# Apuntes 2tri - css

## XML
Añadir hoja de estilos (css) a xml
```css
<?xml-stylesheet type='text/css' href='boletin22.css'?>
```
### Crear listas

```css
display: list-item; 
list-style-type: disc; // circulos negros
```
![imagenesReadme](discInsideOutside)
```
list-style:  disc inside;
```

#### Listas multiples
En algunos navegadores si los indentamos puede que haya conflictos, por tanto utilizamos otro metodo

Ejemplo 1
1.1.
```css
edificio{
	display: block; 
	counter-reset: contador; 
	margin-bottom: 10px;
}
```
cada vez que llega a esta etiqueta se resetea el que hemos denominado como "contador" 

1.2.
```css
nombre:before, ciudad:before, completado:before{ /* indico que antes de esas etiqueta hagan lo que tiene en el cuerpo */
	content: counter(contador, lower-alpha)". "; 
```
 va a contener en `counter`. 
 `contador` es el nombre que le hemos denominado al `counter`. 
 `lower-alpha` enumeracion en letras. con `upper-alpha` enumeracion en mayus (A\nB\n...)
 `". "` despues de la letra añade un punto y un espacio.

1.3.
`list-style: lower-alpha inside;` si pusieramos esto en las siguientes etiquetas 
haría exactamente los mismo que hicimos de forma manual con le contador. El problema es que
cuando está indentado pueden aparecer conflictos.
```css
}
nombre, ciudad, completado{
	display: block;
	margin-left: 40px;
	counter-increment: contador; /* incrementamos el "counter" en cada una de las etiquetas */
	list-style-type: none; /* para que no me aplique estilos aqui, asi evitamos posibles
	errores */
}
```
lo de none creo no lo entiendo muy bien porque quitando ese estilo me aparece igual. preguntar????

### Formato 

#### Margenes
```
margin-left: 5em; // izq 
margin-top: 10px;
margin-bottom: 10px; // de abajo

```

#### Otros
```
display: block; // da un enter <br>
```

### Letra
```
font-weight: bolder; // negrita
font-size: 2em; // tamaño
```

### Contenido
```
display:  none;	 // no muestra el contenido de las etiquetas
```


#### Tamaños
* <num>em; relativo
* <num>px; pixeless

