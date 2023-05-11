for $x in doc("boletin36")//libro
return <titulos-autor>{data($x/titulo)," ", $x/autor/text()}</titulos-autor>

