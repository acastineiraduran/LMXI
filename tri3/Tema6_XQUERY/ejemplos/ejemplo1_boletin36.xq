(:ejemplo de at:)
for $x at $i in doc("boletin36")//libro
return <lista-titulo>{$i}.{data($x/titulo)}</lista-titulo>