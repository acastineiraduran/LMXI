<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  
  <html>
  <head>
	  <meta charset="utf-8"/>
	  <meta name="viewport" content="width=device-width, initial-scale=1"/>
	  <link rel="stylesheet" type="text/css" href="./IntroduccionXSL.css"/>
  </head>
  <body>
  
    <h1>Ejercicio 1</h1>
    <h2>Mis libros</h2>
    <xsl:for-each select="//libro">
      <p> 
      <b>Titulo: </b><xsl:value-of select="titulo"/>
      <br></br>
      <b>Autor: </b><xsl:value-of select="autor"/>
      </p>
    </xsl:for-each>
    
    <h1>Ejercicio 2</h1>
    <p>El numero de libros es: <xsl:value-of select="count(//libro)"/></p>
    
    <h1>Ejercicio 3</h1>
    <xsl:for-each select="//libro">
      <xsl:sort select="titulo"/> <!--orden titulos alf con short-->
      <p><b>Titulo: </b>
        <xsl:value-of select="titulo"/>
      </p>
    </xsl:for-each>
    
    <h1>Ejercicio 4</h1>
    <tr>
      <td>TITULO</td><td>AUTOR</td><td>ISBN</td><td>PRECIO</td>
    </tr>
    <xsl:for-each select="//libro">
      <tr>
      <td><xsl:value-of select="titulo"/></td>
        <td><xsl:value-of select="autor"/></td>
        <td><xsl:value-of select="isbn"/></td>
        <td><xsl:value-of select="precio"/></td>
      </tr>
    </xsl:for-each>
    
    <h1>Ejercicio 5</h1>
    <xsl:for-each select="//libro[precio>30]">
    <p>
      Titulo: <xsl:value-of select="titulo"/>
      <br></br>
      Precio: <xsl:value-of select="precio"/>
    </p>
    </xsl:for-each>
    
    <h1>Ejercicio 6</h1>
    <select>
      <xsl:for-each select="//libro">
       <option><xsl:value-of select="titulo"/></option>
      </xsl:for-each>
    </select>
  </body>
  </html>
  
  </xsl:template>
</xsl:stylesheet>
