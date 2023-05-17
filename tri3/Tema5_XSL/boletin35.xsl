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
    <xsl:for-each select="//dia">
      <p>
      Numero de dia: <xsl:value-of select="numdia"></xsl:value-of>
      </p>
    </xsl:for-each>
    
  <h1>Ejercicio 2</h1>
    <xsl:for-each select="/horario/dia[numdia>=3]">
        <p>
        <xsl:value-of select="tarea/nombre"></xsl:value-of>
        </p>
    </xsl:for-each>



  <h1>Ejercicio 3</h1>
   <xsl:for-each select="//dia">
   <p>
    <h2>Tarea:</h2>
      Nombre: <xsl:value-of select="tarea/nombre"></xsl:value-of>
      <br></br>
      Prioridad: <xsl:value-of select="tarea/@prioridad"></xsl:value-of>
      <br></br>
      Hora inicio: <xsl:value-of select="tarea/hora-ini"></xsl:value-of>
      <br></br>
      Hora fin: <xsl:value-of select="tarea/hora-fin"></xsl:value-of>
    </p>
   </xsl:for-each>

<h1>Ejercicio 4</h1>
  <xsl:for-each select="//dia">

  <xsl:sort select="numdia"></xsl:sort>
  <p>
  <b>numdia:</b>
   <xsl:value-of select="numdia"/>
   <br></br>
   <b>nombre:</b>
   <xsl:value-of select="tarea/nombre"/>
   <br></br>
</p>
</xsl:for-each>

<h1>Ejercicio 5</h1>
  <xsl:for-each select="//dia">
  <b>HORARIO:</b>
  <p>
   <xsl:for-each select="tarea">
   <blockquote>
   <xsl:choose>
   <xsl:when test="@prioridad">
    <b>prioridad:</b>
        <xsl:value-of select="@prioridad"/>
    </xsl:when>
    </xsl:choose>
    <br></br>
    <b>hora-ini:</b>
      <xsl:value-of select="hora-ini"/>
      <br></br>
    <b>hora-fin:</b>
      <xsl:value-of select="hora-fin"/>
      <br></br>
    <b>nombre:</b>
      <xsl:value-of select="nombre"/>
    </blockquote>
   </xsl:for-each>
  </p>
  </xsl:for-each>


<h1>Ejercicio 6</h1>
    <xsl:for-each select="//tarea">
      <p>
        <strong><xsl:value-of select="nombre"/></strong>
         <xsl:choose>
          <xsl:when test="hora-fin &lt;12">
            -> Por la mañana
          </xsl:when>
          <xsl:when test="hora-fin &lt; 14">
            -> Por el mediodia
          </xsl:when>
          <xsl:otherwise>
            -> Por la tarde
          </xsl:otherwise>
         </xsl:choose>
      </p>
    </xsl:for-each>


</body>
</html>
</xsl:template>
</xsl:stylesheet>
