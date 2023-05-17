# XSL TEORIA

## Enlaces

XML

```xml

<?xml-stylesheet type="text/xsl" href="xxxxxx.xsl"?> 

```

HTML

```html

<html>
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="stylesheet" type="text/css" href="./xxxxxxxxxxx.css"/>
</head>
<body>

...

</body>
</html>

```


-------------


## XSLT - Plantillas

Iterar valores:

```xml
<xsl:for-each select="//xxxx">

  <p>

    <b>xxxx</b>
    <xsl:value-of select="xxxxx"/>
    <br></br>

  </p>

  </xsl:for-each>
```

Ordenar:

```xml
<xsl:sort select="titulo"/>
```

Combo box:

```xml
<select>
  <xsl:for-each select="//xxxxxxx">
      <option>
	<xsl:value-of select="xxxxxxx"/>
      </option>
  </xsl:for-each>
</select>
```

Tablas:

HTML en XSL
```html
<tr>
	<th>xxxxxx</th><th>yyyyyyy</th>
</tr>
<xsl:for-each select="//aaaaaaa">
<tr>
	<td>xxxxxxxx1</td>
	<td>yyyyyyyyy1</td>
</tr>
</xsl:for-each>
```

CSS asociado

```CSS
table,td {
  border:1px 
  solid black;
  border-collapse: collapse;
}
```

> mas ejemplos ![html](https://github.com/acastineiraduran/LMXI/tree/0f4e18f4713c10e61f87763ee9ffd0ae1fe3d3a2/tri1/Tema2_HTML)

> mas estilos ![css](https://github.com/acastineiraduran/LMXI/tree/0f4e18f4713c10e61f87763ee9ffd0ae1fe3d3a2/tri2/Tema3_CSS)


