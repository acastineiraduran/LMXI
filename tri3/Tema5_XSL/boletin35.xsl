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
</body>
</html>

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


