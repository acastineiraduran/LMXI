# Tipos Compuestos

DTD VS SChema declaracion

```xml
<!--DTD-->
<!ELEMENT empleado (nombre, fechaingreso, salario)>

<!--Schema XML-->
<xsd:schema xmlns:xsd=http://www.w3.org/2001/XMLSchema””
targetNamespace=”<http://ejemplo.org/empleado”> >
	<xsd:element name=”empleado”>
		<xsd:complexType>
			<!-- modelo de contenido del empleado va aquí -->
		</xsd:complexType>
	</xsd:element>
</xsd:schema>

```

XML Schema permite definir en forma similar el modelo de contenido de un elemento, al anidar un elemento xsd:complexType dentro dela declaración del xsd:element

# Elementos complejos

Son elementos que contienen elementos hijos o que tienen atributos.

Ejemplo1:

```xml
<!--XML-->
<product pid="1345"/>
<food type="dessert">Ice cream</food>
<description>Sucedió el <date>03.03.99</date> .... </description>
<employee>
		<firstname>John</firstname>
		<lastname>Smith</lastname>
</employee>

<!--DEFINICION ELEMENTOS COMPUESTOS:-->
<!--XSchema - ej:ele vacios con el hijos-->
<xsd:element name="employee"> <!--1 linea declaracion-->
	<xsd:complexType> <!--2 linea declaracion-->
		<xsd:sequence> <!--etiqueta anterior a ele simples-->
			<xsd:element name="firstname" type="xsd:string"/>
			<xsd:element name="lastname" type="xsd:string"/>
		</xsd:sequence>
	</xsd:complexType> <!--ciere linea 2 declaracion-->
</xsd:element> <!--cierre linea 1 declaracino-->

```

1. ~~Elementos vacío con atributos~~ → esto es un elemento SIMPLE, NO COMPUESTO???
2. Elementos no vacíos con atributos (sin elementos hijos)
    
    ```xml
    <xsd:element name="shoesize"> <!--1 linea declaracion-->
    	<xsd:complexType> <!--2 linea declaracion-->
    		<!--ININIO CONTENIDO DEL ELE COMPUESTO:-->
    
    		<xsd:simpleContent> <!--etiqueta anterior a atributos, indica que es tipo simple-->
    			<xsd:extension base="xsd:integer"> <!--tipo de dato ele???-->
    				<xsd:attribute name="country" type="xsd:string" />
    			</xsd:extension> 
    		</xsd:simpleContent>
    
    		<!--FINAL CONTENIDO DEL ELE COMPUESTO-->
    	</xsd:complexType><!--ciere linea 2 declaracion-->
    </xsd:element><!--cierre linea 1 declaracino-->
    ```
    
3. Elementos con elementos hijos
4. Elementos con elementos hijos y con “texto” o valor propio (como el contenido mixto de las DTD)
    
    ```xml
    <letter> 
    	Estimado cliente: 
    	<name> Juan Perez
    	</name>
    	. Su pedido número
    	<orderid>1032
    	</orderid> 
    	se enviará el día 
    	<shipdate>2001-07-13
    	</shipdate>
    	. 
    </letter>
    
    <xsd:element name="letter">
    	<xsd:complexType mixed="true"> <!--añadimos atributo: "mixed"-->
    
    		<xsd:sequence> <!--indicamos ele simples-->
    			<xsd:element name="name" type="xsd:string"/>
    			<xsd:element name="orderid" type="xsd:positiveInteger"/>
    			<xsd:element name="shipdate" type="xsd:date"/>
    		</xsd:sequence>
    
    	</xsd:complexType>
    </xsd:element>
    ```
    
    En los ejemplos anteriores hemos utilizado el elemento `xsd:sequence` como elemento hijo del
    elemento `xsd:complexType`
    
    - Indicadores
        
        Formas de indicar elementos hijos
        
        ```xml
        xsd:secuence <!--orden determinado-->
        xsd:all <!--cualquier orden pero como maximo solo una vez-->
        xsd:choice  <!--solo puede aparecer uno de los elementos que contiene-->
        ```
        
    
    ## Any
    
    ```xml
    <xsd:element name="person">
    	<xsd:complexType>
    		<xsd:sequence>
    			<xsd:element name="firstname" type="xsd:string"/>
    			<xsd:element name="lastname" type="xsd:string"/>
    			<xsd:any minOccurs="0"/> <!--permite incluir ele no declarados inicialmente???-->
    		</xsd:sequence>
    	</xsd:complexType>
    </xsd:element>
    
    <xsd:element name="person">
    	<xsd:complexType>
    		<xsd:sequence>
    			<xsd:element name="firstname" type="xsd:string"/>
    			<xsd:element name="lastname" type="xsd:string"/>
    		</xsd:sequence>
    		<xsd:anyAttribute/> <!--extiende num de atributos de un ele???-->
    	</xsd:complexType>
    </xsd:element>
    ```