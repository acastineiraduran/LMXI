<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/"><!--significa que seleccionamos todo-->
<!--IMPORTANTE: ir a firefox poner en el buscador: about:config      busca security.fileuri.strict_origin_policy y cambiarlo a false  -->
  <!--ELEMENTOS-->
  <html>
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="stylesheet" type="text/css" href="./IntroduccionXSL.css"/>
</head>
  
  <body>
    <h1>Ejemplo 1</h1> 
     <xsl:value-of select="//titulo"/><!-- selecciona y muestra salida del elemento entre comillas-->
     
    <h1>Ejemplo 2- ORDEN ALFABETICO</h1>
    <!--si queremso orden numeros: ...data-type="number"/>-->
    <xsl:for-each select="//pelicula">
      <xsl:sort select="titulo"/> <!--orden titulos alf con short-->
      <p><b>Titulo: </b>
        <xsl:value-of select="titulo"/>
      </p>
    </xsl:for-each>
    
    <h1>Ejemplo 4 - ORDEN INVERSO ALFABETICO</h1>
    <xsl:for-each select="//pelicula">
      <xsl:sort select="titulo" order="descending"/>
      <p><b>Titulo: </b>
        <xsl:value-of select="titulo"/>
      </p>
    </xsl:for-each>
    
    <h1>Ejemplo 5 - CONDICIONAL</h1>
    <xsl:for-each select="//pelicula[director='Fernando León']">
      <xsl:sort select="titulo"/> <!--orden titulos alf-->
      <p><b>Titulo: </b>
        <xsl:value-of select="titulo"/>
      </p>
    </xsl:for-each>
    
    <h1>Ejemplo 6 - CONDICIONAL CON IF-</h1>
    <xsl:for-each select="//pelicula">
      <xsl:if test="director!='Fernando León'">
      <p><b>Titulo: </b>
        <xsl:value-of select="titulo"/>
      </p>
      </xsl:if>
    </xsl:for-each>
    
    <h1>Ejemplo 7 - SWTICH</h1>
    <xsl:for-each select="//pelicula">
      <xsl:choose>
      
        <xsl:when test="titulo='Los lunes al sol'">
          <p>L</p>
        </xsl:when>
          <xsl:when test="titulo='Toro'">
          <p>I</p>
        </xsl:when>
        <xsl:otherwise>
          <p>Otro</p>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
    
    <h1>Ejemplo 8 - LISTAS ORDENADAS</h1>
    <!--recordar listas ordenadas/no ordenadas y de definiciones de HTML-->
    <ol>
      <xsl:for-each select="//pelicula">
        <li>
          <xsl:value-of select="titulo"/>
        </li>
      </xsl:for-each>
    </ol>
    
    <h1>Ejemplo 9 - TABLAS</h1>
    <!--no abri el bucle aqui porque no quiero que me repita lo siguiente:-->
      <table>
        <tr>
         <td>PELICULAS</td><td>DIRECTOR</td>
        </tr>
        <xsl:for-each select="//pelicula">
        <tr>
          <td>
            <xsl:value-of select="titulo"/>
          </td>
          <td>
            <xsl:value-of select="director"/>
          </td>
        </tr>
        </xsl:for-each>
      
      </table>
  </body>
  </html>
  
  </xsl:template>
</xsl:stylesheet>
