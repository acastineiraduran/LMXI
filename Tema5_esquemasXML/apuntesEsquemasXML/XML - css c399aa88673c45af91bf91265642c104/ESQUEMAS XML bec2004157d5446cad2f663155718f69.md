# ESQUEMAS XML

# Características Schema XML

1. Alternativa al uso del DTD pero más potente
2. Lenguaje: XSD (XML Schema Definition) 
3. Objetivo: definir estructura base de docu XML
4. Son sucesores de los DTD
5. Soportan tipod de datos
6. soportan espacios de nombre

# Declaración

XML

```xml
<!--ANTES-->
<?xml version = "1.0" encoding = "UTF-8"?>
<vehiculos>
	<nombre>coche</nombre>
	<nombre>moto</nombre>
	<nombre>carro</nombre>
</vehiculos>

<!--AÑADO EL SCHEMA XML-->
<?xml version = "1.0" encoding = "UTF-8"?>
<vehiculos
xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
xsi:noNamespaceSchemaLocation = "vehiculos.xsd" >
	<nombre>coche</nombre>
	<nombre>moto</nombre>
	<nombre>carro</nombre>
</vehiculos>
```

`xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"` indica que queremos utilizar elementos definidos en [http://www.w3.org/2001/XMLSchema-instance](http://www.w3.org/2001/XMLSchema-instance).

`xsi:noNamespaceSchemaLocation = "vehiculos.xsd"` indica que vamos a usar ese fichero que contiene el XSChema pero sin asocias un espacio de nombres a esas definiciones. Sin esta linea no tenemos esquemas de validacion

Schema XML

```xml
<?xml version = "1.0" encoding = "UTF-8"?>
	<xs:schema xmlns:xs = "http://www.w3.org/2001/XMLSchema">
		<xs:element name = "vehiculos">
			<xs:complexType>
				<xs:sequence>
					<xs:element name = "nombre" type = "xsd:string" maxOccurs = "unbounded"/>
				</xs:sequence>
			</xs:complexType>
		</xs:element>
	</xs:schema>
```

`xmlns:xs` indica que todos lo elementos del Schema  se nombrarán con el prefijo `xs`

# Tipos

[Tipos Simples](ESQUEMAS%20XML%20bec2004157d5446cad2f663155718f69/Tipos%20Simples%20ce79748d0e694d8ba8d023fe810da895.md)

[Tipos Compuestos](ESQUEMAS%20XML%20bec2004157d5446cad2f663155718f69/Tipos%20Compuestos%20629a33c72c46493788b4ded817bbaee4.md)

# Elementos XSD???

Tipos “elementos” (no se como llamarlo):

1. Tipos simples
    
    Elementos del schema se nombran con el prefijo `xs`
    
2. Tipos compuestos
    
    Elementos del schema se nombrea con el prefijo `xsd`
    

Tipos de datos

```xml
prefijoTipo:nombreTipoDato
<!--SIMPLES-->
	xs:string
	xs:decimal
	xs:integer
	xs:boolean
	xs:date
	xs:time
<!--COMPUESTOS-->
	xsd:string
	xsd:decimal
	xsd:integer
	xsd:boolean
	xsd:date
	xsd:time
```