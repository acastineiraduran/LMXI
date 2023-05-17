<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="stylesheet" type="text/css" href="./boletin36.css"/>
</head>
<body>

<!--

<xsl:for-each select="//xxxx">

  <p>
    
    <b>xxxx</b>
    <xsl:value-of select="xxxxx"/>
    <br></br>
    
  </p>
  
  </xsl:for-each>
  
  
<xsl:sort select="titulo"/>
  
<select>
  <xsl:for-each select="//xxxxxxx">
      <option>
        <xsl:value-of select="xxxxxxx"/>
      </option>
  </xsl:for-each>
</select>



  <tr>
    <th>xxxxxx</th><th>yyyyyyy</th>
  </tr>  
  <xsl:for-each select="//aaaaaaa">
  <tr>
    <td>xxxxxxxx1</td>
    <td>yyyyyyyyy1</td>
  </tr>
</xsl:for-each>


-->
<h1>Mi Biblioteca - a) y b)</h1>
  <xsl:for-each select="//libro">
  <xsl:sort select="titulo"/>
    <p>
      <b>Titulo: </b>
      <xsl:value-of select="titulo"/>
      <br></br>
      <b>Autor: </b>
    <xsl:value-of select="autor"/>
    </p>
  </xsl:for-each>
  
  
  <h1>Mi Biblioteca - c)</h1>
  <xsl:for-each select="//libro[precio>30]">
    <p>
      <b>Titulo: </b>
      <xsl:value-of select="titulo"/>
      <br></br>
      <b>Autor: </b>
      <xsl:value-of select="autor"/>
    <br></br>
    <b>Precio: </b>
    <xsl:value-of select="precio"/>
    
    </p>
  </xsl:for-each>


  <xsl:for-each select="//libro[@leng='español']">
    <p>
      
      <b>Titulo:</b>
      <xsl:value-of select="xxxxx"/>
      <br></br>
      
    </p>
  </xsl:for-each>
  
<h1>Mi Biblioteca - d)</h1>  
<select>
  <xsl:for-each select="//libro">
      <option>
        <xsl:value-of select="titulo"/>
      </option>
  </xsl:for-each>
</select>

<h1>Mi Biblioteca - e)</h1>  
  <xsl:for-each select="//libro[@leng='español']">
    <p>
      
      <b>Titulo: </b>
      <xsl:value-of select="titulo"/>
      <br></br>
      <b>Autor: </b>
      <xsl:value-of select="autor"/>
      
    </p>
  </xsl:for-each>
  

<h1>Mi Biblioteca - f)</h1>  

  <tr>
    <th>Titulo</th><th>Autor</th>
  </tr>
  
  <xsl:for-each select="//libro">
  <tr>
    <td>titulo</td>
    <td>isbn</td>
  </tr>
</xsl:for-each>


      <h1>Mi Blibioteca g)</h1>
      <table>
        <tr><th>Título</th> <th>Autor</th> <th>Isbn</th> <th>Precio</th> </tr>
        <xsl:for-each select="//libro">
          <tr><td><xsl:value-of select="titulo"/></td> <td><xsl:value-of select ="autor"/></td> <td><xsl:value-of select="isbn"/></td> <td><xsl:value-of select ="precio"/></td></tr>
        </xsl:for-each>
      </table>
      <p><strong>El número de libros es= </strong><xsl:value-of select="count (//libro)"/></p><br/><br/>


      <h1>Mi Blibioteca h)</h1>
      <table>
        <xsl:for-each select="//libro">
          <xsl:choose>
            <xsl:when test="precio &gt;30">
                          <tr><td><xsl:value-of select="titulo"/></td> <td><xsl:value-of select ="autor"/></td> <td><xsl:value-of select="isbn"/></td> <td id="rojo"><xsl:value-of select ="precio"/></td></tr>
            </xsl:when>
            <xsl:otherwise>
                        <tr><td><xsl:value-of select="titulo"/></td> <td><xsl:value-of select ="autor"/></td> <td><xsl:value-of select="isbn"/></td> <td><xsl:value-of select ="precio"/></td></tr>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:for-each>
      </table>
      <p><strong>La media de los precios = </strong><xsl:value-of select="sum (//precio) div count(//libro)"/></p><br/><br/>
  
  
</body>
</html>
  </xsl:template>
</xsl:stylesheet>
