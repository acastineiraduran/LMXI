(:for vs let:)

(:
for $x at $i in doc("boletin36")//libro
return <lista-titulo>{$i}.{data($x/titulo)}</lista-titulo>
(:clausula "let":)
:)

let $y := doc("boletin36")//libro
return <titulo>{$y/titulo/text()}</titulo>
