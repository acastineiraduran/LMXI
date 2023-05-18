<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  

<html>
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<style>
		table {
		  border: 1px solid black;
		  width:  45%;
		  
		}
		td,th {
		  border: 1px solid black;
		  }
	</style>
	<!--<link rel="stylesheet" type="text/css" href="./examenXSL.css"/>-->
</head>
<body>


<h1>Ejercicio a)</h1>

<xsl:for-each select="//empresa">

  <p>

    <b>Nombre: </b>
    <xsl:value-of select="nombre"/>
    <br></br>
    <b>Índice: </b>
    <xsl:value-of select="@indice"/>
    <br></br>

  </p>

</xsl:for-each>


<h1>Ejercicio b)</h1>

<xsl:for-each select="//empresa">
  <xsl:sort select="precio"/>
  <p>
    
    <b>Nombre: </b>
    <xsl:value-of select="nombre"/>
    <br></br>
    <b>Precio: </b>
    <xsl:value-of select="precio"/>
    <br></br>

  </p>

</xsl:for-each>


<h1>Ejercicio c)</h1>

<xsl:for-each select="//empresa">

  <p>

    <b>Simbolo: </b>
      <xsl:value-of select="simbolo"/>
    <br></br>
    
    <b>Precio: </b>
      <xsl:choose>
        <xsl:when test="precio&lt;25">
          <c style="color:blue">
            <xsl:value-of select="precio"/>
          </c>
        </xsl:when>
        <xsl:when test="precio&gt;75">
          <c style="color:red">
            <xsl:value-of select="precio"/>
          </c>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="precio"/>
        </xsl:otherwise>
      </xsl:choose>
    <br></br>

  </p>

  </xsl:for-each>


<h1>Ejercicio d)</h1>

<table>

<tr><th>Nombre</th><th>Simbolo</th></tr>

<xsl:for-each select="//empresa">
<tr>
  <xsl:choose>
    <xsl:when test="nombre='General Motors' or nombre='Coca-Cola'">
	    <td>**<xsl:value-of select="nombre"/></td>
    </xsl:when>
    <xsl:otherwise>
      <td><xsl:value-of select="nombre"/></td>
    </xsl:otherwise>
    </xsl:choose>
	<td> <xsl:value-of select="simbolo"/></td>
</tr>
</xsl:for-each>

</table>

<p>
  <anotacion style="color:grey"><em>**Empresa perteneciente al indice general</em></anotacion>
</p>

</body>
</html>
  
  
  </xsl:template>
</xsl:stylesheet>
