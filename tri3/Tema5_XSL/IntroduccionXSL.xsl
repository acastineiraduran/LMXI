<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/"><!--significa que seleccionamos todo-->
  <!--ELEMENTOS-->
  <html>
  <body> 
    <h1>Ejemplo 1</h1> 
     <xsl:value-of select="//titulo"/><!-- selecciona y muestra salida del elemento entre comillas-->
     
     <!--ORDEN ALFABETICO-->
      <!--si queremso orden numeros: ...data-type="number"/>-->
    <h1>Ejemplo 2</h1>
    <xsl:for-each select="//pelicula">
      <xsl:sort select="titulo"/> <!--orden titulos alf con short-->
      <p><b>Titulo: </b>
        <xsl:value-of select="titulo"/>
      </p>
    </xsl:for-each>
    
    <!--ORDEN INVERSO ALFABETICO-->
    <h1>Ejemplo 4</h1>
    <xsl:for-each select="//pelicula">
      <xsl:sort select="titulo" order="descending"/>
      <p><b>Titulo: </b>
        <xsl:value-of select="titulo"/>
      </p>
    </xsl:for-each>
    
    <!--CONDICIONAL-->
    <h1>Ejemplo 5</h1>
    <xsl:for-each select="//pelicula[director='Fernando León']">
      <xsl:sort select="titulo"/> <!--orden titulos alf-->
      <p><b>Titulo: </b>
        <xsl:value-of select="titulo"/>
      </p>
    </xsl:for-each>
    
    <!--CONDICIONAL CON IF-->
    <h1>Ejemplo 6</h1>
    <xsl:for-each select="//pelicula">
      <xsl:if test="director!='Fernando León'">
      <p><b>Titulo: </b>
        <xsl:value-of select="titulo"/>
      </p>
      </xsl:if>
    </xsl:for-each>
    
    <!--SWTICH-->
    <h2>Ejemplo 7</h2>
    <xsl:for-each select="//pelicula">
      <xsl:choose>
      
        <xsl:when test="titulo='Los lunes al sol'">
          <p>L</p>
        </xsl:when>
          <xsl:when test="titulo='Toro'">
          <p>I</p>
        </xsl:when>
          <xsl:when test="titulo='Ilegal'">
          <p>Otro</p>
        </xsl:when>
        
      </xsl:choose>
    </xsl:for-each>
  </body>
  </html>
  
  </xsl:template>
</xsl:stylesheet>
