(:where; con let NO FUNCIONA:)

for $x in doc("boletin36")//libro
where $x/precio<30
return <titulos>{data($x/titulo)}</titulos>
